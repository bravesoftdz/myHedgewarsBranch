/****************************************************************************
** Meta object code from reading C++ file 'ask_quit.h'
**
** Created: Thu Apr 6 20:32:48 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "ask_quit.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ask_quit.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWAskQuitDialog[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      17,   16,   16,   16, 0x08,
      34,   16,   16,   16, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_HWAskQuitDialog[] = {
    "HWAskQuitDialog\0\0goToPageVideos()\0"
    "updateList()\0"
};

void HWAskQuitDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWAskQuitDialog *_t = static_cast<HWAskQuitDialog *>(_o);
        switch (_id) {
        case 0: _t->goToPageVideos(); break;
        case 1: _t->updateList(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData HWAskQuitDialog::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWAskQuitDialog::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_HWAskQuitDialog,
      qt_meta_data_HWAskQuitDialog, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWAskQuitDialog::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWAskQuitDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWAskQuitDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWAskQuitDialog))
        return static_cast<void*>(const_cast< HWAskQuitDialog*>(this));
    return QDialog::qt_metacast(_clname);
}

int HWAskQuitDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
QT_END_MOC_NAMESPACE
