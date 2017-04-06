/****************************************************************************
** Meta object code from reading C++ file 'hatprompt.h'
**
** Created: Thu Apr 6 20:32:40 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "hatprompt.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'hatprompt.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HatPrompt[] = {

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
      11,   10,   10,   10, 0x08,
      30,   24,   10,   10, 0x08,
      58,   53,   10,   10, 0x08,
      81,   10,   10,   10, 0x08,
      90,   10,   10,   10, 0x08,
     101,   10,   10,   10, 0x08,
     112,   10,   10,   10, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_HatPrompt[] = {
    "HatPrompt\0\0onAccepted()\0index\0"
    "hatChosen(QModelIndex)\0text\0"
    "filterChanged(QString)\0moveUp()\0"
    "moveDown()\0moveLeft()\0moveRight()\0"
};

void HatPrompt::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HatPrompt *_t = static_cast<HatPrompt *>(_o);
        switch (_id) {
        case 0: _t->onAccepted(); break;
        case 1: _t->hatChosen((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 2: _t->filterChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->moveUp(); break;
        case 4: _t->moveDown(); break;
        case 5: _t->moveLeft(); break;
        case 6: _t->moveRight(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData HatPrompt::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HatPrompt::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_HatPrompt,
      qt_meta_data_HatPrompt, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HatPrompt::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HatPrompt::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HatPrompt::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HatPrompt))
        return static_cast<void*>(const_cast< HatPrompt*>(this));
    return QDialog::qt_metacast(_clname);
}

int HatPrompt::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
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
