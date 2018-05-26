/****************************************************************************
** Meta object code from reading C++ file 'statusofobject.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.10.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../app/Controlers/statusofobject.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'statusofobject.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.10.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_statusofobject_t {
    QByteArrayData data[9];
    char stringdata0[84];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_statusofobject_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_statusofobject_t qt_meta_stringdata_statusofobject = {
    {
QT_MOC_LITERAL(0, 0, 14), // "statusofobject"
QT_MOC_LITERAL(1, 15, 13), // "currentHealth"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 6), // "Health"
QT_MOC_LITERAL(4, 37, 5), // "Money"
QT_MOC_LITERAL(5, 43, 10), // "currentExp"
QT_MOC_LITERAL(6, 54, 7), // "setdexp"
QT_MOC_LITERAL(7, 62, 6), // "tookHP"
QT_MOC_LITERAL(8, 69, 14) // "amountOfHealth"

    },
    "statusofobject\0currentHealth\0\0Health\0"
    "Money\0currentExp\0setdexp\0tookHP\0"
    "amountOfHealth"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_statusofobject[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x01 /* Protected */,
       4,    1,   42,    2, 0x01 /* Protected */,
       5,    0,   45,    2, 0x01 /* Protected */,
       6,    0,   46,    2, 0x01 /* Protected */,
       7,    1,   47,    2, 0x01 /* Protected */,

 // methods: parameters
    QMetaType::Int, QMetaType::UInt,    3,
    QMetaType::UInt, QMetaType::UInt,    4,
    QMetaType::Int,
    QMetaType::Int,
    QMetaType::Int, QMetaType::UInt,    8,

       0        // eod
};

void statusofobject::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        statusofobject *_t = static_cast<statusofobject *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { int _r = _t->currentHealth((*reinterpret_cast< uint(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 1: { uint _r = _t->Money((*reinterpret_cast< uint(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< uint*>(_a[0]) = std::move(_r); }  break;
        case 2: { int _r = _t->currentExp();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 3: { int _r = _t->setdexp();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 4: { int _r = _t->tookHP((*reinterpret_cast< uint(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject statusofobject::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_statusofobject.data,
      qt_meta_data_statusofobject,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *statusofobject::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *statusofobject::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_statusofobject.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int statusofobject::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
