#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include "Timer.h"

int main(int argc, char *argv[])
{
    QGuiApplication *app = SailfishApp::application(argc, argv);
    QQuickView *view = SailfishApp::createView();
    view->setSource(SailfishApp::pathTo("qml/quiz.qml"));
    qmlRegisterType<Timer>("quiz.Timer", 1, 0, "Timer");
    view->showFullScreen();
    return app->exec();
}
