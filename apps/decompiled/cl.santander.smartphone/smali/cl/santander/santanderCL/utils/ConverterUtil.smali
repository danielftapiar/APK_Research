.class public Lcl/santander/santanderCL/utils/ConverterUtil;
.super Ljava/lang/Object;
.source "ConverterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/santanderCL/utils/ConverterUtil$ObjectConversionException;
    }
.end annotation


# static fields
.field private static final NEGATIVE_INFINITY:Ljava/lang/String; = "-INF"

.field private static final POSITIVE_INFINITY:Ljava/lang/String; = "INF"

.field public static final SYSTEM_PROPERTY_ADB_CONVERTERUTIL:Ljava/lang/String; = "adb.converterutil"

.field private static customClass:Ljava/lang/Class;

.field private static isCustomClassPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1030
    const-string v1, "adb.converterutil"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcl/santander/santanderCL/utils/ConverterUtil;->isCustomClassPresent:Z

    .line 1031
    sget-boolean v1, Lcl/santander/santanderCL/utils/ConverterUtil;->isCustomClassPresent:Z

    if-eqz v1, :cond_0

    .line 1032
    const-string v1, "adb.converterutil"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcl/santander/santanderCL/utils/ConverterUtil;->customClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_1
    return-void

    .line 1030
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1035
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 6
    .param p0, "dateString"    # Ljava/lang/StringBuffer;
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x5

    const/16 v4, 0xa

    .line 113
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 115
    .local v1, "year":I
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 116
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 119
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    if-ge v1, v4, :cond_2

    .line 122
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 129
    .local v0, "month":I
    if-ge v0, v4, :cond_3

    .line 130
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_4

    .line 134
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 137
    return-void
.end method

.method public static appendTime(Ljava/util/Calendar;Ljava/lang/StringBuffer;)V
    .locals 6
    .param p0, "value"    # Ljava/util/Calendar;
    .param p1, "dateString"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v1, 0xb

    const/16 v3, 0xe

    const/16 v2, 0xa

    .line 176
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 177
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 181
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 185
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_2
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 189
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_3
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    .line 192
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_4
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 195
    return-void
.end method

.method public static appendTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuffer;)V
    .locals 7
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "dateString"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v6, 0xa

    .line 88
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v2, v4, v5

    .line 89
    .local v2, "timezoneOffSet":I
    const v4, 0xea60

    div-int v3, v2, v4

    .line 90
    .local v3, "timezoneOffSetInMinits":I
    if-gez v3, :cond_2

    .line 91
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    mul-int/lit8 v3, v3, -0x1

    .line 96
    :goto_0
    div-int/lit8 v0, v3, 0x3c

    .line 97
    .local v0, "hours":I
    rem-int/lit8 v1, v3, 0x3c

    .line 99
    .local v1, "minits":I
    if-ge v0, v6, :cond_0

    .line 100
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    if-ge v1, v6, :cond_1

    .line 105
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    return-void

    .line 94
    .end local v0    # "hours":I
    .end local v1    # "minits":I
    :cond_2
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static compare(DLjava/lang/String;)D
    .locals 2
    .param p0, "doubleValue"    # D
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sub-double v0, p0, v0

    return-wide v0
.end method

.method public static compare(Ljava/math/BigDecimal;Ljava/lang/String;)D
    .locals 4
    .param p0, "binBigDecimal"    # Ljava/math/BigDecimal;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static compare(FLjava/lang/String;)F
    .locals 1
    .param p0, "floatValue"    # F
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float v0, p0, v0

    return v0
.end method

.method public static compare(BLjava/lang/String;)I
    .locals 1
    .param p0, "byteVlaue"    # B
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    sub-int v0, p0, v0

    return v0
.end method

.method public static compare(ILjava/lang/String;)I
    .locals 1
    .param p0, "intValue"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p0, v0

    return v0
.end method

.method public static compare(Ljava/math/BigInteger;Ljava/lang/String;)I
    .locals 2
    .param p0, "binBigInteger"    # Ljava/math/BigInteger;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static compare(SLjava/lang/String;)I
    .locals 1
    .param p0, "shortValue"    # S
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    sub-int v0, p0, v0

    return v0
.end method

.method public static compare(JLjava/lang/String;)J
    .locals 2
    .param p0, "longValue"    # J
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static compare(Ljava/util/Calendar;Ljava/lang/String;)J
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 916
    invoke-static {p1}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToDateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 917
    .local v0, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static compare(Ljava/util/Date;Ljava/lang/String;)J
    .locals 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-static {p1}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 910
    .local v0, "newDate":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static convertToAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 370
    return-object p0
.end method

.method public static convertToAnyURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 464
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertToArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .param p0, "baseArrayClass"    # Ljava/lang/Class;
    .param p1, "objectList"    # Ljava/util/List;

    .prologue
    .line 706
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 707
    .local v2, "listSize":I
    const/4 v4, 0x0

    .line 708
    .local v4, "returnArray":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 709
    new-array v0, v2, [I

    .line 710
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 718
    move-object v4, v0

    .line 809
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .end local v4    # "returnArray":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 711
    .restart local v0    # "array":[I
    .restart local v1    # "i":I
    .restart local v4    # "returnArray":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 712
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 713
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 710
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    :cond_1
    const/high16 v5, -0x80000000

    aput v5, v0, v1

    goto :goto_2

    .line 719
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 720
    new-array v0, v2, [F

    .line 721
    .local v0, "array":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v2, :cond_3

    .line 729
    move-object v4, v0

    .local v4, "returnArray":[F
    goto :goto_1

    .line 722
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 723
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 724
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v0, v1

    .line 721
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 726
    :cond_4
    const/high16 v5, 0x7fc00000    # NaNf

    aput v5, v0, v1

    goto :goto_4

    .line 730
    .end local v0    # "array":[F
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_5
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 731
    new-array v0, v2, [S

    .line 732
    .local v0, "array":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-lt v1, v2, :cond_6

    .line 740
    move-object v4, v0

    .local v4, "returnArray":[S
    goto :goto_1

    .line 733
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 734
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_7

    .line 735
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v5

    aput-short v5, v0, v1

    .line 732
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 737
    :cond_7
    const/16 v5, -0x8000

    aput-short v5, v0, v1

    goto :goto_6

    .line 741
    .end local v0    # "array":[S
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_8
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 742
    new-array v0, v2, [B

    .line 743
    .local v0, "array":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-lt v1, v2, :cond_9

    .line 751
    move-object v4, v0

    .local v4, "returnArray":[B
    goto :goto_1

    .line 744
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 745
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_a

    .line 746
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v0, v1

    .line 743
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 748
    :cond_a
    const/16 v5, -0x80

    aput-byte v5, v0, v1

    goto :goto_8

    .line 752
    .end local v0    # "array":[B
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_b
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 753
    new-array v0, v2, [J

    .line 754
    .local v0, "array":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-lt v1, v2, :cond_c

    .line 762
    move-object v4, v0

    .local v4, "returnArray":[J
    goto/16 :goto_1

    .line 755
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 756
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_d

    .line 757
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v1

    .line 754
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 759
    :cond_d
    const-wide/high16 v5, -0x8000000000000000L

    aput-wide v5, v0, v1

    goto :goto_a

    .line 763
    .end local v0    # "array":[J
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_e
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 764
    new-array v0, v2, [Z

    .line 765
    .local v0, "array":[Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    if-lt v1, v2, :cond_f

    .line 771
    move-object v4, v0

    .local v4, "returnArray":[Z
    goto/16 :goto_1

    .line 766
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 767
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_10

    .line 768
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v0, v1

    .line 765
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 772
    .end local v0    # "array":[Z
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_11
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 773
    new-array v0, v2, [C

    .line 774
    .local v0, "array":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    if-lt v1, v2, :cond_12

    .line 780
    move-object v4, v0

    .local v4, "returnArray":[C
    goto/16 :goto_1

    .line 775
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 776
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_13

    .line 777
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    aget-char v5, v5, v6

    aput-char v5, v0, v1

    .line 774
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 781
    .end local v0    # "array":[C
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_14
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 782
    new-array v0, v2, [D

    .line 783
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    if-lt v1, v2, :cond_15

    .line 791
    move-object v4, v0

    .local v4, "returnArray":[D
    goto/16 :goto_1

    .line 784
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 785
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_16

    .line 786
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v0, v1

    .line 783
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 788
    :cond_16
    const-wide/high16 v5, 0x7ff8000000000000L    # NaN

    aput-wide v5, v0, v1

    goto :goto_e

    .line 792
    .end local v0    # "array":[D
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_17
    const-class v5, Ljava/util/Calendar;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 793
    new-array v0, v2, [Ljava/util/Calendar;

    .line 794
    .local v0, "array":[Ljava/util/Calendar;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    if-lt v1, v2, :cond_18

    .line 804
    move-object v4, v0

    .local v4, "returnArray":[Ljava/util/Calendar;
    goto/16 :goto_1

    .line 795
    .local v4, "returnArray":Ljava/lang/Object;
    :cond_18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 796
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_19

    .line 797
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 798
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToDateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    aput-object v5, v0, v1

    .line 794
    .end local v3    # "o":Ljava/lang/Object;
    :cond_19
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 799
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1a
    instance-of v5, v3, Ljava/util/Calendar;

    if-eqz v5, :cond_19

    .line 800
    check-cast v3, Ljava/util/Calendar;

    .end local v3    # "o":Ljava/lang/Object;
    aput-object v3, v0, v1

    goto :goto_10

    .line 806
    .end local v0    # "array":[Ljava/util/Calendar;
    .end local v1    # "i":I
    :cond_1b
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static convertToArray(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "baseArrayClass"    # Ljava/lang/Class;
    .param p1, "valueArray"    # [Ljava/lang/String;

    .prologue
    .line 689
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v1, "valuesList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 695
    invoke-static {p0, v1}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 691
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static convertToBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 483
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    const/4 v0, 0x0

    .line 489
    :goto_0
    return-object v0

    .line 486
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 489
    :cond_2
    invoke-static {p0}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertToBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "returnValue":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 360
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    :cond_0
    const/4 v0, 0x1

    .line 366
    :cond_1
    return v0

    .line 362
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in valid string -"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for boolean value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 493
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    const/16 v0, -0x80

    .line 496
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public static convertToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 12
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 386
    :cond_0
    const/4 v9, 0x0

    .line 448
    :goto_0
    return-object v9

    .line 388
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "bc":Z
    const-string v9, "-"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 391
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 392
    const/4 v0, 0x1

    .line 395
    :cond_2
    const/4 v8, 0x0

    .line 396
    .local v8, "year":I
    const/4 v5, 0x0

    .line 397
    .local v5, "month":I
    const/4 v2, 0x0

    .line 398
    .local v2, "day":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    .line 400
    .local v7, "timeZoneOffSet":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_b

    .line 402
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_4

    .line 403
    :cond_3
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "invalid date format ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") with out - s at correct place "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 405
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 406
    const/4 v9, 0x5

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 407
    const/16 v9, 0x8

    const/16 v10, 0xa

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_5

    .line 410
    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "restpart":Ljava/lang/String;
    const-string v9, "Z"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 413
    const/4 v7, 0x0

    .line 434
    .end local v6    # "restpart":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 435
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 436
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->setLenient(Z)V

    .line 437
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/4 v9, 0x2

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 440
    const/4 v9, 0x5

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 441
    const/16 v9, 0xf

    invoke-virtual {v1, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 442
    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 443
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 444
    if-eqz v0, :cond_6

    .line 445
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 448
    :cond_6
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    goto/16 :goto_0

    .line 414
    .end local v1    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "restpart":Ljava/lang/String;
    :cond_7
    const-string v9, "+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 416
    :cond_8
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_9

    .line 417
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "invalid time zone format ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    const-string v11, ") without : at correct place"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 417
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 420
    :cond_9
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 421
    .local v3, "hours":I
    const/4 v9, 0x4

    const/4 v10, 0x6

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 422
    .local v4, "minits":I
    mul-int/lit8 v9, v3, 0x3c

    add-int/2addr v9, v4

    const v10, 0xea60

    mul-int v7, v9, v10

    .line 423
    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    mul-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 427
    .end local v3    # "hours":I
    .end local v4    # "minits":I
    :cond_a
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "In valid string sufix"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 431
    .end local v6    # "restpart":Ljava/lang/String;
    :cond_b
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "In valid string to parse"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static convertToDateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 23
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 507
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 508
    :cond_0
    const/4 v3, 0x0

    .line 640
    :goto_0
    return-object v3

    .line 510
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 513
    const/4 v4, 0x0

    .line 514
    .local v4, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 515
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 516
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 519
    const-string v20, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 520
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 521
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 524
    :cond_2
    const/16 v19, 0x0

    .line 525
    .local v19, "year":I
    const/4 v14, 0x0

    .line 526
    .local v14, "month":I
    const/4 v5, 0x0

    .line 527
    .local v5, "day":I
    const/4 v6, 0x0

    .line 528
    .local v6, "hour":I
    const/4 v12, 0x0

    .line 529
    .local v12, "minite":I
    const/16 v16, 0x0

    .line 530
    .local v16, "second":I
    const-wide/16 v9, 0x0

    .line 531
    .local v9, "miliSecond":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 534
    .local v18, "timeZoneOffSet":I
    if-eqz p0, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    .line 535
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 536
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 537
    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x54

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 538
    const/16 v20, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 539
    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 540
    :cond_3
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "invalid date format ("

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") with out - s at correct place "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 542
    :cond_4
    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 543
    const/16 v20, 0x5

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 544
    const/16 v20, 0x8

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 545
    const/16 v20, 0xb

    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 546
    const/16 v20, 0xe

    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 547
    const/16 v20, 0x11

    const/16 v21, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 549
    const/4 v11, 0x0

    .line 551
    .local v11, "milliSecondPartLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 552
    const/16 v20, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 553
    .local v15, "rest":Ljava/lang/String;
    const-string v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 555
    const-string v20, "Z"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 557
    const/16 v18, 0x0

    .line 558
    const-string v20, "GMT"

    invoke-static/range {v20 .. v20}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 559
    const/16 v20, 0x1

    const-string v21, "Z"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v9, v0

    .line 560
    const/16 v20, 0x1

    const-string v21, "Z"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    .line 614
    .end local v15    # "rest":Ljava/lang/String;
    :cond_5
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 616
    const/16 v20, 0x2

    add-int/lit8 v21, v14, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 617
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 618
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v3, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 619
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v3, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 620
    const/16 v20, 0xd

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 621
    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v11, v0, :cond_6

    .line 625
    const-wide/16 v20, 0x3e8

    mul-long v9, v9, v20

    .line 626
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-lt v8, v11, :cond_12

    .line 630
    .end local v8    # "i":I
    :cond_6
    const/16 v20, 0xe

    long-to-int v0, v9

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 631
    const/16 v20, 0xf

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 632
    const/16 v20, 0x10

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 561
    .restart local v15    # "rest":Ljava/lang/String;
    :cond_7
    const-string v20, "+"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-gtz v20, :cond_8

    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_c

    .line 563
    :cond_8
    const/16 v17, 0x0

    .line 564
    .local v17, "timeOffSet":Ljava/lang/String;
    const-string v20, "+"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_a

    .line 565
    const-string v20, "+"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 566
    const/16 v20, 0x1

    const-string v21, "+"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v9, v0

    .line 567
    const/16 v20, 0x1

    const-string v21, "+"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    .line 569
    const/16 v18, 0x1

    .line 578
    :cond_9
    :goto_3
    const/16 v20, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 579
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "invalid time zone format ("

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 580
    const-string v22, ") without : at correct place"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 579
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 571
    :cond_a
    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    if-lez v20, :cond_9

    .line 572
    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 573
    const/16 v20, 0x1

    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v9, v0

    .line 574
    const/16 v20, 0x1

    const-string v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    .line 576
    const/16 v18, -0x1

    goto :goto_3

    .line 582
    :cond_b
    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 583
    .local v7, "hours":I
    const/16 v20, 0x3

    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 584
    .local v13, "minits":I
    mul-int/lit8 v20, v7, 0x3c

    add-int v20, v20, v13

    const v21, 0xea60

    mul-int v20, v20, v21

    mul-int v18, v18, v20

    goto/16 :goto_1

    .line 588
    .end local v7    # "hours":I
    .end local v13    # "minits":I
    .end local v17    # "timeOffSet":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v9, v0

    .line 589
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    goto/16 :goto_1

    .line 593
    :cond_d
    const-string v20, "Z"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 594
    const-string v20, "GMT"

    invoke-static/range {v20 .. v20}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 596
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 597
    :cond_e
    const-string v20, "+"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 599
    :cond_f
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 600
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "invalid time zone format ("

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 601
    const-string v22, ") without : at correct place"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 600
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 603
    :cond_10
    const/16 v20, 0x1

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 604
    .restart local v7    # "hours":I
    const/16 v20, 0x4

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 605
    .restart local v13    # "minits":I
    mul-int/lit8 v20, v7, 0x3c

    add-int v20, v20, v13

    const v21, 0xea60

    mul-int v18, v20, v21

    .line 606
    const-string v20, "-"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 607
    mul-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 610
    .end local v7    # "hours":I
    .end local v13    # "minits":I
    :cond_11
    new-instance v20, Ljava/lang/NumberFormatException;

    const-string v21, "in valid time zone attribute"

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 627
    .end local v15    # "rest":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_12
    const-wide/16 v20, 0xa

    div-long v9, v9, v20

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 637
    .end local v8    # "i":I
    .end local v11    # "milliSecondPartLength":I
    :cond_13
    new-instance v20, Ljava/lang/NumberFormatException;

    const-string v21, "date string can not be less than 19 charactors"

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v20
.end method

.method public static convertToDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 296
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 301
    :cond_2
    :goto_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_3
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static convertToDouble(Ljava/lang/String;)D
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 289
    :goto_0
    return-wide v0

    .line 277
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 284
    :cond_2
    :goto_1
    const-string v0, "INF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 279
    :cond_3
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 286
    :cond_4
    const-string v0, "-INF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 287
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 289
    :cond_5
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static convertToFloat(Ljava/lang/String;)F
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 306
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    .line 323
    :goto_0
    return v1

    .line 309
    :cond_1
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 317
    :cond_2
    :goto_1
    const-string v1, "INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 311
    :cond_3
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "cantidad":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 319
    .end local v0    # "cantidad":Ljava/lang/String;
    :cond_4
    const-string v1, "-INF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public static convertToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    const/high16 v0, -0x80000000

    .line 260
    :goto_0
    return v0

    .line 257
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 260
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static convertToInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 473
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    .line 476
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 479
    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertToLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 331
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 340
    :goto_0
    return-wide v1

    .line 334
    :cond_1
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 336
    :cond_3
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "cantidad":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static convertToObject(B)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # B

    .prologue
    .line 674
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public static convertToObject(C)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # C

    .prologue
    .line 678
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public static convertToObject(D)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # D

    .prologue
    .line 670
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static convertToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 662
    return-object p0
.end method

.method public static convertToObject(S)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # S

    .prologue
    .line 682
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public static convertToObject(Z)Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # Z

    .prologue
    .line 666
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static convertToQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "nameSpaceuri"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 651
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 653
    .local v0, "colon":I
    if-gez v0, :cond_0

    move-object v1, p0

    .line 654
    .local v1, "localPart":Ljava/lang/String;
    :goto_0
    if-gtz v0, :cond_1

    const-string v2, ""

    .line 655
    .local v2, "perfix":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, p1, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 653
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "perfix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 654
    .restart local v1    # "localPart":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static convertToShort(Ljava/lang/String;)S
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    const/16 v1, -0x8000

    .line 353
    :goto_0
    return v1

    .line 347
    :cond_1
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0

    .line 349
    :cond_3
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "cantidad":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static convertToString(B)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # B

    .prologue
    .line 52
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(C)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # C

    .prologue
    .line 56
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(D)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # D

    .prologue
    .line 48
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(F)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # F

    .prologue
    .line 40
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # J

    .prologue
    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Byte;

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Double;

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Float;

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Integer;

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Long;

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/Short;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Short;

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 327
    return-object p0
.end method

.method public static convertToString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/math/BigInteger;

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/util/Calendar;

    .prologue
    .line 158
    sget-boolean v1, Lcl/santander/santanderCL/utils/ConverterUtil;->isCustomClassPresent:Z

    if-eqz v1, :cond_0

    .line 159
    const-class v1, Ljava/util/Calendar;

    invoke-static {p0, v1}, Lcl/santander/santanderCL/utils/ConverterUtil;->invokeToStringMethod(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 162
    :cond_0
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 163
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    .local v0, "dateString":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lcl/santander/santanderCL/utils/ConverterUtil;->appendDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 167
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-static {p0, v0}, Lcl/santander/santanderCL/utils/ConverterUtil;->appendTime(Ljava/util/Calendar;Ljava/lang/StringBuffer;)V

    .line 170
    invoke-static {p0, v0}, Lcl/santander/santanderCL/utils/ConverterUtil;->appendTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuffer;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static convertToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 69
    sget-boolean v2, Lcl/santander/santanderCL/utils/ConverterUtil;->isCustomClassPresent:Z

    if-eqz v2, :cond_0

    .line 71
    const-class v2, Ljava/util/Date;

    invoke-static {p0, v2}, Lcl/santander/santanderCL/utils/ConverterUtil;->invokeToStringMethod(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 76
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v1, "dateString":Ljava/lang/StringBuffer;
    invoke-static {v1, v0}, Lcl/santander/santanderCL/utils/ConverterUtil;->appendDate(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 82
    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/ConverterUtil;->appendTimeZone(Ljava/util/Calendar;Ljava/lang/StringBuffer;)V

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertToString(Ljavax/xml/datatype/Duration;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljavax/xml/datatype/Duration;

    .prologue
    .line 238
    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 222
    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static convertToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # S

    .prologue
    .line 60
    invoke-static {p0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Z

    .prologue
    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToAnyURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method

.method public static getObjectForClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 933
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 934
    .local v3, "stringConstructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 948
    .end local v3    # "stringConstructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v4

    .line 938
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 935
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 946
    :try_start_1
    const-string v4, "parse"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 947
    .local v2, "parseMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 948
    .local v1, "instance":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    goto :goto_0

    .line 949
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "parseMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lcl/santander/santanderCL/utils/ConverterUtil$ObjectConversionException;

    invoke-direct {v4, v0}, Lcl/santander/santanderCL/utils/ConverterUtil$ObjectConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 951
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method private static invokeToStringMethod(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 142
    :try_start_0
    sget-object v3, Lcl/santander/santanderCL/utils/ConverterUtil;->customClass:Ljava/lang/Class;

    const-string v4, "convertToString"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    .local v2, "result":Ljava/lang/String;
    return-object v2

    .line 145
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find the method convertToString("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in converter util class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/ConverterUtil;->customClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 148
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not access the method convertToString("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in converter util class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/ConverterUtil;->customClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 151
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not invocate the method convertToString("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in converter util class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcl/santander/santanderCL/utils/ConverterUtil;->customClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 821
    if-nez p0, :cond_1

    .line 822
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    :cond_0
    return-object v1

    .line 824
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v1, "list":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 826
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
