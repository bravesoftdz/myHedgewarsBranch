/****************************************************************************
** Meta object code from reading C++ file 'frameTeam.h'
**
** Created: Thu Apr 6 20:32:40 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "frameTeam.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'frameTeam.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FrameTeams[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      12,   11,   11,   11, 0x05,

 // slots: signature, parameters, type, tag, flags
      51,   37,   11,   11, 0x0a,
      77,   72,   11,   11, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_FrameTeams[] = {
    "FrameTeams\0\0teamColorChanged(HWTeam)\0"
    "team,willPlay\0addTeam(HWTeam,bool)\0"
    "team\0removeTeam(HWTeam)\0"
};

void FrameTeams::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        FrameTeams *_t = static_cast<FrameTeams *>(_o);
        switch (_id) {
        case 0: _t->teamColorChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 1: _t->addTeam((*reinterpret_cast< HWTeam(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 2: _t->removeTeam((*reinterpret_cast< HWTeam(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData FrameTeams::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject FrameTeams::staticMetaObject = {
    { &QFrame::staticMetaObject, qt_meta_stringdata_FrameTeams,
      qt_meta_data_FrameTeams, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FrameTeams::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FrameTeams::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FrameTeams::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FrameTeams))
        return static_cast<void*>(const_cast< FrameTeams*>(this));
    return QFrame::qt_metacast(_clname);
}

int FrameTeams::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QFrame::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void FrameTeams::teamColorChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
