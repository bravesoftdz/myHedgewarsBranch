/****************************************************************************
** Meta object code from reading C++ file 'keybinder.h'
**
** Created: Thu Apr 6 20:32:40 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "keybinder.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'keybinder.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_KeyBinder[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      18,   11,   10,   10, 0x05,
      34,   10,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
      55,   50,   10,   10, 0x08,
      79,   10,   10,   10, 0x08,
     105,  100,   10,   10, 0x08,
     140,   10,   10,   10, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_KeyBinder[] = {
    "KeyBinder\0\0bindID\0bindUpdate(int)\0"
    "resetAllBinds()\0page\0changeBindingsPage(int)\0"
    "bindChanged(QString)\0item\0"
    "bindCellClicked(QTableWidgetItem*)\0"
    "bindSelectionChanged()\0"
};

void KeyBinder::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        KeyBinder *_t = static_cast<KeyBinder *>(_o);
        switch (_id) {
        case 0: _t->bindUpdate((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->resetAllBinds(); break;
        case 2: _t->changeBindingsPage((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->bindChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->bindCellClicked((*reinterpret_cast< QTableWidgetItem*(*)>(_a[1]))); break;
        case 5: _t->bindSelectionChanged(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData KeyBinder::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject KeyBinder::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_KeyBinder,
      qt_meta_data_KeyBinder, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &KeyBinder::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *KeyBinder::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *KeyBinder::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_KeyBinder))
        return static_cast<void*>(const_cast< KeyBinder*>(this));
    return QWidget::qt_metacast(_clname);
}

int KeyBinder::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void KeyBinder::bindUpdate(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void KeyBinder::resetAllBinds()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}
QT_END_MOC_NAMESPACE
