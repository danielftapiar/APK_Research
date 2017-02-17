.class public Lcl/santander/santanderCL/utils/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/santanderCL/utils/AppLog$LevelLog;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SantanderClBusiness"

.field public static levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    sput-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 34
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 35
    const-string v0, "SantanderClBusiness"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    const-string v0, "SantanderClBusiness"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 27
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->DEBUG:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 46
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 47
    const-string v0, "SantanderClBusiness"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 52
    const-string v0, "SantanderClBusiness"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 59
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ERROR:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 72
    const-string v0, "SantanderClBusiness"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->INFO:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 94
    const-string v0, "SantanderClBusiness"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->NONE:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcl/santander/santanderCL/utils/AppLog;->levelLog:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v0}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v0

    sget-object v1, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->WARN:Lcl/santander/santanderCL/utils/AppLog$LevelLog;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/AppLog$LevelLog;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    return-void
.end method
