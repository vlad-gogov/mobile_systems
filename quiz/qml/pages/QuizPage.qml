import QtQuick 2.0
import Sailfish.Silica 1.0
import quiz.Timer 1.0

Page {
    id: page
    property string category_name
    property string category_url
    property int sec: 5

    Timer {
        id: timer
        sec: page.sec
    }

    property var allQuestions: []

    property var questions: []
    property int currentQuestion: 0
    property int score: 0
    property int n: 3

    property bool answer: false

    function nextQuestion() {
        nextBtn.visible = false;
        answer = !answer
        currentQuestion++;
        if (currentQuestion === questions.length) {
            time.visible = false;
            main.visible = false;
            end.visible = true;
            endtext.text = "Ваш результат: " + score + " из " + n;
            return;
        }
        dataModel.clear();
        questionText.text = questions[currentQuestion].question;
        for (var i = 0; i < questions[currentQuestion].answers.length; i++) {
            dataModel.append({text: questions[currentQuestion].answers[i]});
        }
        timer.stopTimer();
        timer.startTimer();
        timer.timeout.connect(function(){
            answer = !answer;
            nextBtn.visible = true;
        })
    }

    function checkAnswer(answerIndex, rectangle) {
        if (!answer) {
            if (questions[currentQuestion].correct_answer === answerIndex) {
                rectangle.color = "green"
                score++;
            } else {
                rectangle.color = "red";
            }
            nextBtn.visible = true;
            answer = !answer
        }
    }


    ListModel { id: dataModel; }
    Column {
        id: main
        anchors.fill: parent
        spacing: 10
        anchors.margins: 10

        Rectangle {
            Text {
                id: questionText
                anchors.centerIn: parent
                color: "#D1FF00"
            }
            border.color: "#FF0070"
            border.width: 5
            color: "#1100A2"
            radius: 20
            height: questionText.contentHeight + 50
            width: parent.width
        }

        SilicaListView {
            id: answers
            width: parent.width;
            height: parent.height;
            model: dataModel
            spacing: 10
            delegate: Rectangle {
                Button {
                    width: parent.width
                    height: parent.height
                    onClicked: checkAnswer(model.index, parent)
                }
                width: parent.width
                Text {
                    id: answerText
                    anchors.centerIn: parent
                    text: model.text
                }
                height: answerText.contentHeight + 10
                color: "white"
            }
        }
    }

    Slider {
        id:time
        width: parent.width
        minimumValue: 0
        maximumValue: page.sec
        value: 0
        stepSize: 1
        enabled: false
        anchors.bottom: nextBtn.top
        anchors.bottomMargin: 10
     }

    Button {
       id: nextBtn
       text: "Следующий вопрос"
       width: parent.width
       anchors.bottom: page.bottom
       anchors.bottomMargin: 10
       onClicked: nextQuestion()
       backgroundColor: "#10A3BD"
       color: "white"
       visible: false
    }

    Column {
        id: end
        anchors.centerIn: parent
        Text {
            id: endtext
            color: "#D1FF00"
            font.pixelSize: Theme.fontSizeMedium
        }
        visible: false
    }

    Component.onCompleted: {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                allQuestions = JSON.parse(xhr.responseText);
                var i = 0;
                for (; i < n; i++) {
                    var random = Math.floor(Math.random() * allQuestions.length);
                    questions[questions.length] = allQuestions[random];
                    allQuestions.splice(random, 1);
                }
                questionText.text = questions[currentQuestion].question;
                for (i = 0; i < questions[currentQuestion].answers.length; i++) {
                    dataModel.append({text: questions[currentQuestion].answers[i]});
                }
            }
        }
        xhr.open("GET", category_url, true);
        xhr.send();
        timer.startTimer();
        timer.started.connect(function(){
            time.value = 0;
        });
        timer.tick.connect(function(){
            if (!answer) {
                time.value++;
            }
            else {
                timer.stopTimer();
            }
        })
        timer.timeout.connect(function(){
            answer = !answer;
            nextBtn.visible = true;
        })
    }
}
