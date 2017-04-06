/****************************************************************************
** Meta object code from reading C++ file 'themeprompt.h'
**
** Created: Thu Apr 6 20:32:37 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "themeprompt.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'themeprompt.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_ThemePrompt[] = {

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
      13,   12,   12,   12, 0x08,
      32,   26,   12,   12, 0x08,
      62,   57,   12,   12, 0x08,
      85,   12,   12,   12, 0x08,
      94,   12,   12,   12, 0x08,
     105,   12,   12,   12, 0x08,
     116,   12,   12,   12, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_ThemePrompt[] = {
    "ThemePrompt\0\0onAccepted()\0index\0"
    "themeChosen(QModelIndex)\0text\0"
    "filterChanged(QString)\0moveUp()\0"
    "moveDown()\0moveLeft()\0moveRight()\0"
};

void ThemePrompt::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ThemePrompt *_t = static_cast<ThemePrompt *>(_o);
        switch (_id) {
        case 0: _t->onAccepted(); break;
        case 1: _t->themeChosen((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 2: _t->filterChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->moveUp(); break;
        case 4: _t->moveDown(); break;
        case 5: _t->moveLeft(); break;
        case 6: _t->moveRight(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData ThemePrompt::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject ThemePrompt::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_ThemePrompt,
      qt_meta_data_ThemePrompt, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &ThemePrompt::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *ThemePrompt::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *ThemePrompt::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_ThemePrompt))
        return static_cast<void*>(const_cast< ThemePrompt*>(this));
    return QDialog::qt_metacast(_clname);
}

int ThemePrompt::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
