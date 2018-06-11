#include <QGuiApplication>
#include <QQmlContext>
#include <QQmlComponent>
#include <QQmlApplicationEngine>
#include <QFontDatabase>

int main(int argc, char *argv[])
{
    QGuiApplication::setApplicationName("FBuk");
    QGuiApplication::setOrganizationName("MayhemProject");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QFontDatabase::addApplicationFont(":/fonts/webfonts/fonts/materialdesignicons-webfont.ttf");

    // Engine
    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
