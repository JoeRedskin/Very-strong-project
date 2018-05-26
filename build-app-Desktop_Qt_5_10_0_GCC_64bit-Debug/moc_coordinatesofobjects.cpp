/****************************************************************************
** Meta object code from reading C++ file 'coordinatesofobjects.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.10.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../app/Controlers/coordinatesofobjects.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'coordinatesofobjects.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.10.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_coordinatesofobjects_t {
    QByteArrayData data[7];
    char stringdata0[55];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_coordinatesofobjects_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_coordinatesofobjects_t qt_meta_stringdata_coordinatesofobjects = {
    {
QT_MOC_LITERAL(0, 0, 20), // "coordinatesofobjects"
QT_MOC_LITERAL(1, 21, 6), // "setPos"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 4), // "xVal"
QT_MOC_LITERAL(4, 34, 4), // "yVal"
QT_MOC_LITERAL(5, 39, 7), // "getPosX"
QT_MOC_LITERAL(6, 47, 7) // "getPosY"

    },
    "coordinatesofobjects\0setPos\0\0xVal\0"
    "yVal\0getPosX\0getPosY"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_coordinatesofobjects[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    2,   29,    2, 0x01 /* Protected */,
       5,    0,   34,    2, 0x02 /* Public */,
       6,    0,   35,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Int, QMetaType::Int, QMetaType::Int,    3,    4,
    QMetaType::Int,
    QMetaType::Int,

       0        // eod
};

void coordinatesofobjects::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        coordinatesofobjects *_t = static_cast<coordinatesofobjects *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { int _r = _t->setPos((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 1: { int _r = _t->getPosX();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 2: { int _r = _t->getPosY();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject coordinatesofobjects::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_coordinatesofobjects.data,
      qt_meta_data_coordinatesofobjects,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *coordinatesofobjects::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *coordinatesofobjects::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_coordinatesofobjects.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int coordinatesofobjects::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
