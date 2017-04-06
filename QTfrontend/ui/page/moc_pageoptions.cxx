/****************************************************************************
** Meta object code from reading C++ file 'pageoptions.h'
**
** Created: Thu Apr 6 20:32:46 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pageoptions.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pageoptions.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_OptionGroupBox[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

static const char qt_meta_stringdata_OptionGroupBox[] = {
    "OptionGroupBox\0"
};

void OptionGroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObjectExtraData OptionGroupBox::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject OptionGroupBox::staticMetaObject = {
    { &IconedGroupBox::staticMetaObject, qt_meta_stringdata_OptionGroupBox,
      qt_meta_data_OptionGroupBox, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &OptionGroupBox::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *OptionGroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *OptionGroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_OptionGroupBox))
        return static_cast<void*>(const_cast< OptionGroupBox*>(this));
    return IconedGroupBox::qt_metacast(_clname);
}

int OptionGroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = IconedGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
static const uint qt_meta_data_PageOptions[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      23,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      13,   12,   12,   12, 0x05,
      41,   32,   12,   12, 0x05,
      68,   32,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
     103,   97,   12,   12, 0x08,
     130,  124,   12,   12, 0x08,
     149,  124,   12,   12, 0x08,
     174,  168,   12,   12, 0x08,
     190,   12,   12,   12, 0x08,
     204,   12,   12,   12, 0x08,
     230,   12,   12,   12, 0x08,
     258,  124,   12,   12, 0x08,
     280,  278,   12,   12, 0x08,
     324,  304,   12,   12, 0x08,
     373,   12,   12,   12, 0x08,
     394,   97,   12,   12, 0x08,
     414,  124,   12,   12, 0x08,
     436,  124,   12,   12, 0x08,
     459,   12,   12,   12, 0x08,
     477,   12,   12,   12, 0x08,
     505,  498,   12,   12, 0x08,
     522,   12,   12,   12, 0x08,
     538,   12,   12,   12, 0x08,
     553,   12,   12,   12, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_PageOptions[] = {
    "PageOptions\0\0newTeamRequested()\0"
    "teamName\0editTeamRequested(QString)\0"
    "deleteTeamRequested(QString)\0index\0"
    "forceFullscreen(int)\0state\0"
    "setFullscreen(int)\0setResolution(int)\0"
    "value\0setQuality(int)\0trimNetNick()\0"
    "requestEditSelectedTeam()\0"
    "requestDeleteSelectedTeam()\0"
    "savePwdChanged(int)\0i\0colorButtonClicked(int)\0"
    "topLeft,bottomRight\0"
    "onColorModelDataChanged(QModelIndex,QModelIndex)\0"
    "onProxyTypeChanged()\0changeAVFormat(int)\0"
    "changeUseGameRes(int)\0changeRecordAudio(int)\0"
    "checkForUpdates()\0tabIndexChanged(int)\0"
    "bindID\0bindUpdated(int)\0resetAllBinds()\0"
    "setVolume(int)\0setDefaultOptions()\0"
};

void PageOptions::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageOptions *_t = static_cast<PageOptions *>(_o);
        switch (_id) {
        case 0: _t->newTeamRequested(); break;
        case 1: _t->editTeamRequested((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->deleteTeamRequested((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->forceFullscreen((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->setFullscreen((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->setResolution((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->setQuality((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->trimNetNick(); break;
        case 8: _t->requestEditSelectedTeam(); break;
        case 9: _t->requestDeleteSelectedTeam(); break;
        case 10: _t->savePwdChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->colorButtonClicked((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->onColorModelDataChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 13: _t->onProxyTypeChanged(); break;
        case 14: _t->changeAVFormat((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: _t->changeUseGameRes((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->changeRecordAudio((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 17: _t->checkForUpdates(); break;
        case 18: _t->tabIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 19: _t->bindUpdated((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->resetAllBinds(); break;
        case 21: _t->setVolume((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 22: _t->setDefaultOptions(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageOptions::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageOptions::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageOptions,
      qt_meta_data_PageOptions, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageOptions::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageOptions::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageOptions::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageOptions))
        return static_cast<void*>(const_cast< PageOptions*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageOptions::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 23)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 23;
    }
    return _id;
}

// SIGNAL 0
void PageOptions::newTeamRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void PageOptions::editTeamRequested(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PageOptions::deleteTeamRequested(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
