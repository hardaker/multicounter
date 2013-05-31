#include <QApplication>
#include "qmlapplicationviewer.h"
#include "whatami.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.addImportPath(QLatin1String("modules"));
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
#ifdef IS_MEEGO
    viewer.setSource(QUrl("qrc:/qml/multicounter/meegocounter.qml"));
#else
    viewer.setSource(QUrl("qrc:/qml/multicounter/Main.qml"));
#endif
    viewer.showExpanded();

    return app->exec();
}
