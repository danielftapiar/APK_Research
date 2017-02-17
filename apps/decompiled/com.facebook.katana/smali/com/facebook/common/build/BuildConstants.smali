.class public Lcom/facebook/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Z

.field private static final d:Z

.field private static final e:Z

.field private static final f:Z

.field private static final g:Z

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->c:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->c:Z

    .line 19
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->g:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->d:Z

    .line 20
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->a:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->e:Z

    .line 21
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->f:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->f:Z

    .line 22
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->h:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->g:Z

    .line 23
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->e:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->h:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->i:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->i:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->j:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->j:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->k:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->k:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->l:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->l:Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.workchat"

    :goto_0
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->a:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->m:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->b:Ljava/lang/String;

    return-void

    .line 71
    :cond_0
    const-string v0, "com.facebook.orca"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->e:Z

    return v0
.end method

.method public static final b()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->f:Z

    return v0
.end method

.method public static final c()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->c:Z

    return v0
.end method

.method public static final d()Z
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final e()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->d:Z

    return v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.workdev"

    .line 165
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-string v0, "com.facebook.work"

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "com.facebook.wakizashi"

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "com.facebook.katana"

    goto :goto_0
.end method

.method public static final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "wakizashi"

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "katana"

    goto :goto_0
.end method

.method public static final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://m.facebook.com/mobile_builds"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://market.android.com/details?id=com.facebook.katana"

    goto :goto_0
.end method
