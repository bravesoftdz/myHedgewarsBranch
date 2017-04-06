/****************************************************************************
** Meta object code from reading C++ file 'roomnameprompt.h'
**
** Created: Thu Apr 6 20:32:35 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "roomnameprompt.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'roomnameprompt.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RoomNamePrompt[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_RoomNamePrompt[] = {
    "RoomNamePrompt\0\0checkBoxToggled()\0"
};

void RoomNamePrompt::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RoomNamePrompt *_t = static_cast<RoomNamePrompt *>(_o);
        switch (_id) {
        case 0: _t->checkBoxToggled(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData RoomNamePrompt::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RoomNamePrompt::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_RoomNamePrompt,
      qt_meta_data_RoomNamePrompt, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RoomNamePrompt::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RoomNamePrompt::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RoomNamePrompt::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RoomNamePrompt))
        return static_cast<void*>(const_cast< RoomNamePrompt*>(this));
    return QDialog::qt_metacast(_clname);
}

int RoomNamePrompt::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
