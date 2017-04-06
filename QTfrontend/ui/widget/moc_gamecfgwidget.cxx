/****************************************************************************
** Meta object code from reading C++ file 'gamecfgwidget.h'
**
** Created: Thu Apr 6 20:32:42 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "gamecfgwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gamecfgwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GameCFGWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      23,   14, // methods
       1,  129, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      27,   15,   14,   14, 0x05,
      61,   14,   14,   14, 0x05,
      78,   14,   14,   14, 0x05,
      95,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
     109,   15,   14,   14, 0x0a,
     139,   14,   14,   14, 0x0a,
     155,   14,   14,   14, 0x0a,
     181,  174,   14,   14, 0x0a,
     204,  197,   14,   14, 0x0a,
     226,  220,   14,   14, 0x08,
     243,   14,   14,   14, 0x08,
     263,   14,   14,   14, 0x08,
     290,   14,   14,   14, 0x08,
     311,   14,   14,   14, 0x08,
     333,   14,   14,   14, 0x08,
     352,   14,   14,   14, 0x08,
     371,   14,   14,   14, 0x08,
     387,   14,   14,   14, 0x08,
     405,  403,   14,   14, 0x08,
     435,  433,   14,   14, 0x08,
     457,  433,   14,   14, 0x08,
     491,  486,   14,   14, 0x08,
     521,   14,   14,   14, 0x08,

 // properties: name, type, flags
     174,  540, 0x01095103,

       0        // eod
};

static const char qt_meta_stringdata_GameCFGWidget[] = {
    "GameCFGWidget\0\0param,value\0"
    "paramChanged(QString,QStringList)\0"
    "goToSchemes(int)\0goToWeapons(int)\0"
    "goToDrawMap()\0setParam(QString,QStringList)\0"
    "fullNetConfig()\0resendSchemeData()\0"
    "master\0setMaster(bool)\0tabbed\0"
    "setTabbed(bool)\0index\0ammoChanged(int)\0"
    "mapChanged(QString)\0templateFilterChanged(int)\0"
    "seedChanged(QString)\0themeChanged(QString)\0"
    "schemeChanged(int)\0scriptChanged(int)\0"
    "jumpToSchemes()\0jumpToWeapons()\0m\0"
    "mapgenChanged(MapGenerator)\0s\0"
    "maze_sizeChanged(int)\0"
    "slMapFeatureSizeChanged(int)\0data\0"
    "onDrawnMapChanged(QByteArray)\0"
    "updateModelViews()\0bool\0"
};

void GameCFGWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        GameCFGWidget *_t = static_cast<GameCFGWidget *>(_o);
        switch (_id) {
        case 0: _t->paramChanged((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QStringList(*)>(_a[2]))); break;
        case 1: _t->goToSchemes((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->goToWeapons((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->goToDrawMap(); break;
        case 4: _t->setParam((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QStringList(*)>(_a[2]))); break;
        case 5: _t->fullNetConfig(); break;
        case 6: _t->resendSchemeData(); break;
        case 7: _t->setMaster((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->setTabbed((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->ammoChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->mapChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->templateFilterChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->seedChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 13: _t->themeChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 14: _t->schemeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: _t->scriptChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->jumpToSchemes(); break;
        case 17: _t->jumpToWeapons(); break;
        case 18: _t->mapgenChanged((*reinterpret_cast< MapGenerator(*)>(_a[1]))); break;
        case 19: _t->maze_sizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->slMapFeatureSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 21: _t->onDrawnMapChanged((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 22: _t->updateModelViews(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData GameCFGWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject GameCFGWidget::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_GameCFGWidget,
      qt_meta_data_GameCFGWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GameCFGWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GameCFGWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GameCFGWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GameCFGWidget))
        return static_cast<void*>(const_cast< GameCFGWidget*>(this));
    return QGroupBox::qt_metacast(_clname);
}

int GameCFGWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 23)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 23;
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
void GameCFGWidget::paramChanged(const QString & _t1, const QStringList & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GameCFGWidget::goToSchemes(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void GameCFGWidget::goToWeapons(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void GameCFGWidget::goToDrawMap()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
