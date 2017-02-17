.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L


# instance fields
.field timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 558
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p2, Ljava/util/Calendar;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/util/Calendar;

    .prologue
    .line 585
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "x1"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "x2"    # Ljava/lang/Class;

    .prologue
    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;
    .locals 7
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/util/Calendar;>;"
    const/4 v6, 0x1

    .line 573
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    const-class v4, Ljava/util/TimeZone;

    invoke-virtual {v3, p1, p2, v4}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 574
    .local v2, "result":Ljava/util/Calendar;
    invoke-virtual {p2, v6}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 576
    invoke-virtual {p2, v6}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 577
    invoke-virtual {p2, v6}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 578
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v0

    .line 579
    .local v0, "gregorianChange":J
    const-wide v4, -0xb1d069b5400L

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 580
    instance-of v3, v2, Ljava/util/GregorianCalendar;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/GregorianCalendar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 581
    :cond_0
    return-object v2
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "x1"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p3, Ljava/util/Calendar;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 561
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->timeZoneSerializer:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TimeZone;)V

    .line 562
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    .line 563
    invoke-virtual {p3}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    .line 564
    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    .line 565
    invoke-virtual {p3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    .line 566
    instance-of v0, p3, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 567
    check-cast p3, Ljava/util/GregorianCalendar;

    .end local p3    # "object":Ljava/util/Calendar;
    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    .line 570
    :goto_0
    return-void

    .line 569
    .restart local p3    # "object":Ljava/util/Calendar;
    :cond_0
    const-wide v0, -0xb1d069b5400L

    invoke-virtual {p2, v0, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(JZ)I

    goto :goto_0
.end method
