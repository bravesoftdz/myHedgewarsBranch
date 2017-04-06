/****************************************************************************
** Meta object code from reading C++ file 'mapContainer.h'
**
** Created: Thu Apr 6 20:32:36 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "mapContainer.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mapContainer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWMapContainer[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      44,   14, // methods
       1,  234, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      12,       // signalCount

 // signals: signature, parameters, type, tag, flags
      21,   16,   15,   15, 0x05,
      46,   42,   15,   15, 0x05,
      72,   66,   15,   15, 0x05,
     101,   94,   15,   15, 0x05,
     126,  124,   15,   15, 0x05,
     156,  154,   15,   15, 0x05,
     177,  154,   15,   15, 0x05,
     204,   15,   15,   15, 0x05,
     228,  223,   15,   15, 0x05,
     256,   15,   15,   15, 0x05,
     280,   15,   15,   15, 0x05,
     307,  304,   15,   15, 0x05,

 // slots: signature, parameters, type, tag, flags
     345,   15,   15,   15, 0x0a,
     370,   16,   15,   15, 0x0a,
     406,  387,   15,   15, 0x0a,
     433,   42,   15,   15, 0x0a,
     449,   66,   15,   15, 0x0a,
     467,   15,   15,   15, 0x0a,
     490,  124,   15,   15, 0x0a,
     519,  514,   15,   15, 0x0a,
     536,  514,   15,   15, 0x0a,
     559,  556,   15,   15, 0x0a,
     624,  587,   15,   15, 0x0a,
     686,   15,   15,   15, 0x0a,
     705,   42,   15,   15, 0x0a,
     744,  737,   15,   15, 0x0a,
     771,  760,   15,   15, 0x0a,
     806,  797,   15,   15, 0x08,
     832,  824,   15,   15, 0x08,
     848,   15,   15,   15, 0x08,
     864,   15,   15,   15, 0x08,
     881,   15,   15,   15, 0x08,
     902,  896,   15,   15, 0x08,
     936,  928,   15,   15, 0x08,
     956,   15,   15,   15, 0x08,
     976,   15,   15,   15, 0x08,
    1002,  994,   15,   15, 0x08,
    1035, 1027,   15,   15, 0x08,
    1077,   42,   15,   15, 0x28,
    1107, 1027,   15,   15, 0x08,
    1150,   42,   15,   15, 0x28,
    1181,   15,   15,   15, 0x08,
    1195,   15,   15,   15, 0x08,
    1212,   15,   15,   15, 0x08,

 // properties: name, type, flags
     737, 1229, 0x01095103,

       0        // eod
};

static const char qt_meta_stringdata_HWMapContainer[] = {
    "HWMapContainer\0\0seed\0seedChanged(QString)\0"
    "map\0mapChanged(QString)\0theme\0"
    "themeChanged(QString)\0filter\0"
    "newTemplateFilter(int)\0m\0"
    "mapgenChanged(MapGenerator)\0s\0"
    "mazeSizeChanged(int)\0mapFeatureSizeChanged(int)\0"
    "drawMapRequested()\0data\0"
    "drawnMapChanged(QByteArray)\0"
    "resourceUpdate(QString)\0locatorRequest(QString)\0"
    ",,\0locatorReply(QString,QString,QString)\0"
    "askForGeneratedPreview()\0setSeed(QString)\0"
    "script,scriptparam\0setScript(QString,QString)\0"
    "setMap(QString)\0setTheme(QString)\0"
    "setTemplateFilter(int)\0setMapgen(MapGenerator)\0"
    "size\0setMazeSize(int)\0setFeatureSize(int)\0"
    "ar\0setDrawnMapData(QByteArray)\0"
    "map,m,mazesize,seed,tmpl,featureSize\0"
    "setAllMapParameters(QString,MapGenerator,int,QString,int,int)\0"
    "updateModelViews()\0onPreviewMapDestroyed(QObject*)\0"
    "master\0setMaster(bool)\0withoutDLC\0"
    "setRandomWithoutDLC(bool)\0newImage\0"
    "setImage(QPixmap)\0hhLimit\0setHHLimit(int)\0"
    "setRandomSeed()\0setRandomTheme()\0"
    "setRandomMap()\0image\0addInfoToPreview(QPixmap)\0"
    "newSeed\0setNewSeed(QString)\0"
    "mapTypeChanged(int)\0showThemePrompt()\0"
    "current\0updateTheme(QModelIndex)\0"
    "map,old\0staticMapChanged(QModelIndex,QModelIndex)\0"
    "staticMapChanged(QModelIndex)\0"
    "missionMapChanged(QModelIndex,QModelIndex)\0"
    "missionMapChanged(QModelIndex)\0"
    "loadDrawing()\0showSeedPrompt()\0"
    "previewClicked()\0bool\0"
};

void HWMapContainer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWMapContainer *_t = static_cast<HWMapContainer *>(_o);
        switch (_id) {
        case 0: _t->seedChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->mapChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->themeChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->newTemplateFilter((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->mapgenChanged((*reinterpret_cast< MapGenerator(*)>(_a[1]))); break;
        case 5: _t->mazeSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->mapFeatureSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->drawMapRequested(); break;
        case 8: _t->drawnMapChanged((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 9: _t->resourceUpdate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 10: _t->locatorRequest((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->locatorReply((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 12: _t->askForGeneratedPreview(); break;
        case 13: _t->setSeed((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 14: _t->setScript((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 15: _t->setMap((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 16: _t->setTheme((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 17: _t->setTemplateFilter((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 18: _t->setMapgen((*reinterpret_cast< MapGenerator(*)>(_a[1]))); break;
        case 19: _t->setMazeSize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->setFeatureSize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 21: _t->setDrawnMapData((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 22: _t->setAllMapParameters((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< MapGenerator(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4])),(*reinterpret_cast< int(*)>(_a[5])),(*reinterpret_cast< int(*)>(_a[6]))); break;
        case 23: _t->updateModelViews(); break;
        case 24: _t->onPreviewMapDestroyed((*reinterpret_cast< QObject*(*)>(_a[1]))); break;
        case 25: _t->setMaster((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 26: _t->setRandomWithoutDLC((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 27: _t->setImage((*reinterpret_cast< const QPixmap(*)>(_a[1]))); break;
        case 28: _t->setHHLimit((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 29: _t->setRandomSeed(); break;
        case 30: _t->setRandomTheme(); break;
        case 31: _t->setRandomMap(); break;
        case 32: _t->addInfoToPreview((*reinterpret_cast< const QPixmap(*)>(_a[1]))); break;
        case 33: _t->setNewSeed((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 34: _t->mapTypeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 35: _t->showThemePrompt(); break;
        case 36: _t->updateTheme((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 37: _t->staticMapChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 38: _t->staticMapChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 39: _t->missionMapChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 40: _t->missionMapChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 41: _t->loadDrawing(); break;
        case 42: _t->showSeedPrompt(); break;
        case 43: _t->previewClicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData HWMapContainer::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWMapContainer::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_HWMapContainer,
      qt_meta_data_HWMapContainer, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWMapContainer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWMapContainer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWMapContainer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWMapContainer))
        return static_cast<void*>(const_cast< HWMapContainer*>(this));
    return QWidget::qt_metacast(_clname);
}

int HWMapContainer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 44)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 44;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = isMaster(); break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setMaster(*reinterpret_cast< bool*>(_v)); break;
        }
        _id -= 1;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void HWMapContainer::seedChanged(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void HWMapContainer::mapChanged(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void HWMapContainer::themeChanged(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void HWMapContainer::newTemplateFilter(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void HWMapContainer::mapgenChanged(MapGenerator _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void HWMapContainer::mazeSizeChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void HWMapContainer::mapFeatureSizeChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void HWMapContainer::drawMapRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 7, 0);
}

// SIGNAL 8
void HWMapContainer::drawnMapChanged(const QByteArray & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void HWMapContainer::resourceUpdate(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void HWMapContainer::locatorRequest(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void HWMapContainer::locatorReply(const QString & _t1, const QString & _t2, const QString & _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}
QT_END_MOC_NAMESPACE
