/****************************************************************************
** Meta object code from reading C++ file 'pagescheme.h'
**
** Created: Thu Apr 6 20:32:43 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagescheme.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagescheme.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageScheme[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      12,   11,   11,   11, 0x0a,
      21,   11,   11,   11, 0x0a,
      31,   11,   11,   11, 0x0a,
      43,   11,   11,   11, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageScheme[] = {
    "PageScheme\0\0newRow()\0copyRow()\0"
    "deleteRow()\0schemeSelected(int)\0"
};

void PageScheme::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageScheme *_t = static_cast<PageScheme *>(_o);
        switch (_id) {
        case 0: _t->newRow(); break;
        case 1: _t->copyRow(); break;
        case 2: _t->deleteRow(); break;
        case 3: _t->schemeSelected((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageScheme::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageScheme::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageScheme,
      qt_meta_data_PageScheme, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageScheme::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageScheme::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageScheme::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageScheme))
        return static_cast<void*>(const_cast< PageScheme*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageScheme::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
