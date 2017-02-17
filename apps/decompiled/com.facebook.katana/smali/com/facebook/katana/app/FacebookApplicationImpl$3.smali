.class Lcom/facebook/katana/app/FacebookApplicationImpl$3;
.super Ljava/lang/Object;
.source "FacebookApplicationImpl.java"

# interfaces
.implements Lcom/facebook/base/app/LightweightPerfEvents$Marker;


# instance fields
.field final synthetic a:Lcom/facebook/perf/StartupPerfLogger;

.field final synthetic b:Lcom/facebook/katana/app/FacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplicationImpl;Lcom/facebook/perf/StartupPerfLogger;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->b:Lcom/facebook/katana/app/FacebookApplicationImpl;

    iput-object p2, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->a:Lcom/facebook/perf/StartupPerfLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;JJZ)V
    .locals 9

    .prologue
    .line 310
    iget-object v1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$3;->a:Lcom/facebook/perf/StartupPerfLogger;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/facebook/katana/app/FacebookApplicationImpl;->a(Lcom/facebook/perf/StartupPerfLogger;ILjava/lang/String;JJLjava/lang/Boolean;)V

    .line 311
    return-void
.end method
