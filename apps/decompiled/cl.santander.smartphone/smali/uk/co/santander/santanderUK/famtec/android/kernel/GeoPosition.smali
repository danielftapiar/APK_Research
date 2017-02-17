.class public Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GPS_NO_LOCATION:I = 0x0

.field public static final GPS_OK:I = 0x1

.field public static final GPS_RESTRICTED:I = -0x1


# instance fields
.field public m_estado:I

.field public m_latitud:D

.field public m_longitud:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iput-wide v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const/4 v0, 0x0

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iput-wide p3, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    return-void
.end method

.method public constructor <init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iput-wide v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iget-wide v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    iput-wide v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    iget v0, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    iput v0, p0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    return-void
.end method
