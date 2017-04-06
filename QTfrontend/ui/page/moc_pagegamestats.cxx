/****************************************************************************
** Meta object code from reading C++ file 'pagegamestats.h'
**
** Created: Thu Apr 6 20:32:46 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagegamestats.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagegamestats.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FitGraphicsView[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

static const char qt_meta_stringdata_FitGraphicsView[] = {
    "FitGraphicsView\0"
};

void FitGraphicsView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObjectExtraData FitGraphicsView::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject FitGraphicsView::staticMetaObject = {
    { &QGraphicsView::staticMetaObject, qt_meta_stringdata_FitGraphicsView,
      qt_meta_data_FitGraphicsView, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FitGraphicsView::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FitGraphicsView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FitGraphicsView::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FitGraphicsView))
        return static_cast<void*>(const_cast< FitGraphicsView*>(this));
    return QGraphicsView::qt_metacast(_clname);
}

int FitGraphicsView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGraphicsView::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
static const uint qt_meta_data_PageGameStats[] = {

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
      15,   14,   14,   14, 0x05,
      35,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
      68,   58,   14,   14, 0x0a,
      92,   14,   14,   14, 0x0a,
     100,   14,   14,   14, 0x0a,
     122,  114,   14,   14, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_PageGameStats[] = {
    "PageGameStats\0\0saveDemoRequested()\0"
    "restartGameRequested()\0type,info\0"
    "GameStats(char,QString)\0clear()\0"
    "renderStats()\0visible\0restartBtnVisible(bool)\0"
};

void PageGameStats::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageGameStats *_t = static_cast<PageGameStats *>(_o);
        switch (_id) {
        case 0: _t->saveDemoRequested(); break;
        case 1: _t->restartGameRequested(); break;
        case 2: _t->GameStats((*reinterpret_cast< char(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 3: _t->clear(); break;
        case 4: _t->renderStats(); break;
        case 5: _t->restartBtnVisible((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageGameStats::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageGameStats::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageGameStats,
      qt_meta_data_PageGameStats, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageGameStats::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageGameStats::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageGameStats::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageGameStats))
        return static_cast<void*>(const_cast< PageGameStats*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageGameStats::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
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
void PageGameStats::saveDemoRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void PageGameStats::restartGameRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}
QT_END_MOC_NAMESPACE
