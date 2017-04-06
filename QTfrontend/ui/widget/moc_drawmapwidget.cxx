/****************************************************************************
** Meta object code from reading C++ file 'drawmapwidget.h'
**
** Created: Thu Apr 6 20:32:36 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "drawmapwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'drawmapwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_DrawMapView[] = {

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

static const char qt_meta_stringdata_DrawMapView[] = {
    "DrawMapView\0"
};

void DrawMapView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObjectExtraData DrawMapView::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject DrawMapView::staticMetaObject = {
    { &QGraphicsView::staticMetaObject, qt_meta_stringdata_DrawMapView,
      qt_meta_data_DrawMapView, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &DrawMapView::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *DrawMapView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *DrawMapView::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_DrawMapView))
        return static_cast<void*>(const_cast< DrawMapView*>(this));
    return QGraphicsView::qt_metacast(_clname);
}

int DrawMapView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGraphicsView::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
static const uint qt_meta_data_DrawMapWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      15,   14,   14,   14, 0x0a,
      22,   14,   14,   14, 0x0a,
      30,   14,   14,   14, 0x0a,
      49,   41,   14,   14, 0x0a,
      75,   66,   14,   14, 0x0a,
      89,   66,   14,   14, 0x0a,
     112,  103,   14,   14, 0x0a,
     148,   14,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_DrawMapWidget[] = {
    "DrawMapWidget\0\0undo()\0clear()\0optimize()\0"
    "erasing\0setErasing(bool)\0fileName\0"
    "save(QString)\0load(QString)\0pathType\0"
    "setPathType(DrawMapScene::PathType)\0"
    "pathChanged()\0"
};

void DrawMapWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        DrawMapWidget *_t = static_cast<DrawMapWidget *>(_o);
        switch (_id) {
        case 0: _t->undo(); break;
        case 1: _t->clear(); break;
        case 2: _t->optimize(); break;
        case 3: _t->setErasing((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->save((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 5: _t->load((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 6: _t->setPathType((*reinterpret_cast< DrawMapScene::PathType(*)>(_a[1]))); break;
        case 7: _t->pathChanged(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData DrawMapWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject DrawMapWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_DrawMapWidget,
      qt_meta_data_DrawMapWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &DrawMapWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *DrawMapWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *DrawMapWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_DrawMapWidget))
        return static_cast<void*>(const_cast< DrawMapWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int DrawMapWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
