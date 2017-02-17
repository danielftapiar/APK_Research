.class Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;
.super Ljava/lang/Object;
.source "CrashCounter.java"

# interfaces
.implements Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$CalendarProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 346
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
