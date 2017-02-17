.class final enum Lcl/santander/santanderCL/utils/AppLog$LevelLog;
.super Ljava/lang/Enum;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/AppLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LevelLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/santander/santanderCL/utils/AppLog$LevelLog;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

.field private static final synthetic ENUM$VALUES:[Lcl/santander/santanderCL/utils/AppLog$LevelLog;

.field public static final enum ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

.field public static final enum INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

.field public static final enum NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

.field public static final enum WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    new-instance v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    new-instance v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    new-instance v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v5}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    new-instance v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    aput-object v1, v0, v2

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    aput-object v1, v0, v3

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    aput-object v1, v0, v4

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    aput-object v1, v0, v5

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    aput-object v1, v0, v6

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/santander/santanderCL/utils/AppLog$LevelLog;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    return-object v0
.end method

.method public static values()[Lcl/santander/santanderCL/utils/AppLog$LevelLog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ENUM$VALUES:[Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    array-length v1, v0

    new-array v2, v1, [Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
