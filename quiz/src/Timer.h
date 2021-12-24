#ifndef TIMER_H
#define TIMER_H

#include <QThread>
#include <QDebug>

class Timer : public QThread {
    Q_OBJECT
    Q_PROPERTY(int sec READ sec WRITE setSec NOTIFY secChanged)

    int m_sec;

    void run() override {
        for(int i = 0; i < m_sec; i++) {
            if (QThread::currentThread()->isInterruptionRequested())
                return;
            usleep(900000);
            emit tick();
        }
        emit timeout();
    }

public:
    Q_INVOKABLE explicit Timer(QObject* parent = nullptr) : QThread(parent), m_sec(1) {}
    Q_INVOKABLE ~Timer() = default;

    Q_INVOKABLE void startTimer() {
        start();
    }

    int sec() {
        return m_sec;
    }

    void setSec(int sec_) {
        m_sec = sec_;
        emit secChanged();
    }

    Q_INVOKABLE void stopTimer() {
        requestInterruption();
    }

signals:
    void secChanged();
    void timeout();
    void tick();

};

#endif // TIMER_H
