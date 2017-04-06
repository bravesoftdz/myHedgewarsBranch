/****************************************************************************
** Meta object code from reading C++ file 'pageeditteam.h'
**
** Created: Thu Apr 6 20:32:46 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pageeditteam.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pageeditteam.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageEditTeam[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      24,   14,   13,   13, 0x0a,
      50,   13,   13,   13, 0x08,
      61,   13,   13,   13, 0x08,
      87,   78,   13,   13, 0x08,
     106,   13,   13,   13, 0x08,
     122,  118,   13,   13, 0x08,
     137,   13,   13,   13, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageEditTeam[] = {
    "PageEditTeam\0\0gravename\0"
    "CBFort_activated(QString)\0saveTeam()\0"
    "setRandomNames()\0hh_index\0setRandomName(int)\0"
    "testSound()\0idx\0fixHHname(int)\0"
    "resetAllBinds()\0"
};

void PageEditTeam::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageEditTeam *_t = static_cast<PageEditTeam *>(_o);
        switch (_id) {
        case 0: _t->CBFort_activated((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->saveTeam(); break;
        case 2: _t->setRandomNames(); break;
        case 3: _t->setRandomName((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->testSound(); break;
        case 5: _t->fixHHname((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->resetAllBinds(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageEditTeam::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageEditTeam::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageEditTeam,
      qt_meta_data_PageEditTeam, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageEditTeam::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageEditTeam::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageEditTeam::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageEditTeam))
        return static_cast<void*>(const_cast< PageEditTeam*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageEditTeam::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
