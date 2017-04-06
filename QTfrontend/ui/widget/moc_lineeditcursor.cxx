/****************************************************************************
** Meta object code from reading C++ file 'lineeditcursor.h'
**
** Created: Thu Apr 6 20:32:37 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "lineeditcursor.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'lineeditcursor.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_LineEditCursor[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x05,
      25,   15,   15,   15, 0x05,
      36,   15,   15,   15, 0x05,
      47,   15,   15,   15, 0x05,

       0        // eod
};

static const char qt_meta_stringdata_LineEditCursor[] = {
    "LineEditCursor\0\0moveUp()\0moveDown()\0"
    "moveLeft()\0moveRight()\0"
};

void LineEditCursor::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        LineEditCursor *_t = static_cast<LineEditCursor *>(_o);
        switch (_id) {
        case 0: _t->moveUp(); break;
        case 1: _t->moveDown(); break;
        case 2: _t->moveLeft(); break;
        case 3: _t->moveRight(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData LineEditCursor::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject LineEditCursor::staticMetaObject = {
    { &QLineEdit::staticMetaObject, qt_meta_stringdata_LineEditCursor,
      qt_meta_data_LineEditCursor, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &LineEditCursor::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *LineEditCursor::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *LineEditCursor::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_LineEditCursor))
        return static_cast<void*>(const_cast< LineEditCursor*>(this));
    return QLineEdit::qt_metacast(_clname);
}

int LineEditCursor::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QLineEdit::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void LineEditCursor::moveUp()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void LineEditCursor::moveDown()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void LineEditCursor::moveLeft()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void LineEditCursor::moveRight()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
