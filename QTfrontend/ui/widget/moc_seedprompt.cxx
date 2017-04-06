/****************************************************************************
** Meta object code from reading C++ file 'seedprompt.h'
**
** Created: Thu Apr 6 20:32:36 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "seedprompt.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'seedprompt.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SeedPrompt[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      17,   12,   11,   11, 0x05,

 // slots: signature, parameters, type, tag, flags
      39,   11,   11,   11, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_SeedPrompt[] = {
    "SeedPrompt\0\0seed\0seedSelected(QString)\0"
    "setSeed()\0"
};

void SeedPrompt::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SeedPrompt *_t = static_cast<SeedPrompt *>(_o);
        switch (_id) {
        case 0: _t->seedSelected((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->setSeed(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData SeedPrompt::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject SeedPrompt::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_SeedPrompt,
      qt_meta_data_SeedPrompt, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SeedPrompt::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SeedPrompt::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SeedPrompt::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SeedPrompt))
        return static_cast<void*>(const_cast< SeedPrompt*>(this));
    return QDialog::qt_metacast(_clname);
}

int SeedPrompt::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void SeedPrompt::seedSelected(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
