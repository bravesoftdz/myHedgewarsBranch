/****************************************************************************
** Meta object code from reading C++ file 'AbstractPage.h'
**
** Created: Thu Apr 6 20:32:42 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "AbstractPage.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AbstractPage.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AbstractPage[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      14,   13,   13,   13, 0x05,
      23,   13,   13,   13, 0x05,
      35,   13,   13,   13, 0x05,

 // slots: signature, parameters, type, tag, flags
      47,   13,   13,   13, 0x0a,
      66,   13,   13,   13, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_AbstractPage[] = {
    "AbstractPage\0\0goBack()\0pageEnter()\0"
    "pageLeave()\0triggerPageEnter()\0"
    "triggerPageLeave()\0"
};

void AbstractPage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        AbstractPage *_t = static_cast<AbstractPage *>(_o);
        switch (_id) {
        case 0: _t->goBack(); break;
        case 1: _t->pageEnter(); break;
        case 2: _t->pageLeave(); break;
        case 3: _t->triggerPageEnter(); break;
        case 4: _t->triggerPageLeave(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData AbstractPage::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject AbstractPage::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_AbstractPage,
      qt_meta_data_AbstractPage, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AbstractPage::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AbstractPage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AbstractPage::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AbstractPage))
        return static_cast<void*>(const_cast< AbstractPage*>(this));
    return QWidget::qt_metacast(_clname);
}

int AbstractPage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void AbstractPage::goBack()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void AbstractPage::pageEnter()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void AbstractPage::pageLeave()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
