/****************************************************************************
** Meta object code from reading C++ file 'recorder.h'
**
** Created: Thu Apr 6 20:32:34 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "recorder.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'recorder.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWRecorder[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      21,   12,   11,   11, 0x05,
      47,   39,   11,   11, 0x05,

       0        // eod
};

static const char qt_meta_stringdata_HWRecorder[] = {
    "HWRecorder\0\0progress\0onProgress(float)\0"
    "success\0encodingFinished(bool)\0"
};

void HWRecorder::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWRecorder *_t = static_cast<HWRecorder *>(_o);
        switch (_id) {
        case 0: _t->onProgress((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 1: _t->encodingFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData HWRecorder::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWRecorder::staticMetaObject = {
    { &TCPBase::staticMetaObject, qt_meta_stringdata_HWRecorder,
      qt_meta_data_HWRecorder, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWRecorder::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWRecorder::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWRecorder::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWRecorder))
        return static_cast<void*>(const_cast< HWRecorder*>(this));
    return TCPBase::qt_metacast(_clname);
}

int HWRecorder::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = TCPBase::qt_metacall(_c, _id, _a);
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
void HWRecorder::onProgress(float _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void HWRecorder::encodingFinished(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
