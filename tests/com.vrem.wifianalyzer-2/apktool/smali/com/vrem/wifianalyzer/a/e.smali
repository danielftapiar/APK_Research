.class public final enum Lcom/vrem/wifianalyzer/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vrem/wifianalyzer/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum b:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum c:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum d:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum e:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum f:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum g:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum h:Lcom/vrem/wifianalyzer/a/e;

.field public static final enum i:Lcom/vrem/wifianalyzer/a/e;

.field private static final synthetic n:[Lcom/vrem/wifianalyzer/a/e;


# instance fields
.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Lcom/vrem/wifianalyzer/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/vrem/wifianalyzer/a/e;

    const-string v1, "ACCESS_POINTS"

    const v3, 0x7f020065

    const v4, 0x7f08001e

    new-instance v6, Lcom/vrem/wifianalyzer/a/c;

    new-instance v7, Lcom/vrem/wifianalyzer/c/f;

    invoke-direct {v7}, Lcom/vrem/wifianalyzer/c/f;-><init>()V

    invoke-direct {v6, v7}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    invoke-direct/range {v0 .. v6}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIIZLcom/vrem/wifianalyzer/a/f;)V

    sput-object v0, Lcom/vrem/wifianalyzer/a/e;->a:Lcom/vrem/wifianalyzer/a/e;

    new-instance v3, Lcom/vrem/wifianalyzer/a/e;

    const-string v4, "CHANNEL_RATING"

    const v6, 0x7f02006f

    const v7, 0x7f080021

    new-instance v9, Lcom/vrem/wifianalyzer/a/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/j;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/j;-><init>()V

    invoke-direct {v9, v0}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    move v8, v5

    invoke-direct/range {v3 .. v9}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIIZLcom/vrem/wifianalyzer/a/f;)V

    sput-object v3, Lcom/vrem/wifianalyzer/a/e;->b:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "CHANNEL_GRAPH"

    const v9, 0x7f02005f

    const v10, 0x7f080020

    new-instance v12, Lcom/vrem/wifianalyzer/a/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/a/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b/a/c;-><init>()V

    invoke-direct {v12, v0}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIIZLcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->c:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "TIME_GRAPH"

    const v9, 0x7f020067

    const v10, 0x7f080024

    new-instance v12, Lcom/vrem/wifianalyzer/a/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/b/b/c;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b/b/c;-><init>()V

    invoke-direct {v12, v0}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    move v8, v14

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIIZLcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->d:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "EXPORT"

    const v9, 0x7f02005d

    const v10, 0x7f080022

    new-instance v11, Lcom/vrem/wifianalyzer/a/b;

    invoke-direct {v11}, Lcom/vrem/wifianalyzer/a/b;-><init>()V

    move v8, v15

    invoke-direct/range {v6 .. v11}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->e:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "CHANNEL_AVAILABLE"

    const/4 v8, 0x5

    const v9, 0x7f020061

    const v10, 0x7f08001f

    new-instance v11, Lcom/vrem/wifianalyzer/a/c;

    new-instance v0, Lcom/vrem/wifianalyzer/c/h;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/h;-><init>()V

    invoke-direct {v11, v0}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    invoke-direct/range {v6 .. v11}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->f:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "VENDOR_LIST"

    const/4 v8, 0x6

    const v9, 0x7f020060

    const v10, 0x7f080025

    new-instance v11, Lcom/vrem/wifianalyzer/a/c;

    new-instance v0, Lcom/vrem/wifianalyzer/b/b;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/b/b;-><init>()V

    invoke-direct {v11, v0}, Lcom/vrem/wifianalyzer/a/c;-><init>(Landroid/support/v4/b/k;)V

    invoke-direct/range {v6 .. v11}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->g:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "SETTINGS"

    const/4 v8, 0x7

    const v9, 0x7f020066

    const v10, 0x7f080023

    new-instance v11, Lcom/vrem/wifianalyzer/a/a;

    const-class v0, Lcom/vrem/wifianalyzer/settings/SettingActivity;

    invoke-direct {v11, v0}, Lcom/vrem/wifianalyzer/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v6 .. v11}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->h:Lcom/vrem/wifianalyzer/a/e;

    new-instance v6, Lcom/vrem/wifianalyzer/a/e;

    const-string v7, "ABOUT"

    const/16 v8, 0x8

    const v9, 0x7f02005e

    const v10, 0x7f08001d

    new-instance v11, Lcom/vrem/wifianalyzer/a/a;

    const-class v0, Lcom/vrem/wifianalyzer/about/AboutActivity;

    invoke-direct {v11, v0}, Lcom/vrem/wifianalyzer/a/a;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v6 .. v11}, Lcom/vrem/wifianalyzer/a/e;-><init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V

    sput-object v6, Lcom/vrem/wifianalyzer/a/e;->i:Lcom/vrem/wifianalyzer/a/e;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/vrem/wifianalyzer/a/e;

    sget-object v1, Lcom/vrem/wifianalyzer/a/e;->a:Lcom/vrem/wifianalyzer/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vrem/wifianalyzer/a/e;->b:Lcom/vrem/wifianalyzer/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vrem/wifianalyzer/a/e;->c:Lcom/vrem/wifianalyzer/a/e;

    aput-object v1, v0, v13

    sget-object v1, Lcom/vrem/wifianalyzer/a/e;->d:Lcom/vrem/wifianalyzer/a/e;

    aput-object v1, v0, v14

    sget-object v1, Lcom/vrem/wifianalyzer/a/e;->e:Lcom/vrem/wifianalyzer/a/e;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/vrem/wifianalyzer/a/e;->f:Lcom/vrem/wifianalyzer/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vrem/wifianalyzer/a/e;->g:Lcom/vrem/wifianalyzer/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vrem/wifianalyzer/a/e;->h:Lcom/vrem/wifianalyzer/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vrem/wifianalyzer/a/e;->i:Lcom/vrem/wifianalyzer/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vrem/wifianalyzer/a/e;->n:[Lcom/vrem/wifianalyzer/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/vrem/wifianalyzer/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/vrem/wifianalyzer/a/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/a/e;->j:I

    iput p4, p0, Lcom/vrem/wifianalyzer/a/e;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vrem/wifianalyzer/a/e;->l:Z

    iput-object p5, p0, Lcom/vrem/wifianalyzer/a/e;->m:Lcom/vrem/wifianalyzer/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLcom/vrem/wifianalyzer/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/vrem/wifianalyzer/a/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vrem/wifianalyzer/a/e;->j:I

    iput p4, p0, Lcom/vrem/wifianalyzer/a/e;->k:I

    iput-boolean p5, p0, Lcom/vrem/wifianalyzer/a/e;->l:Z

    iput-object p6, p0, Lcom/vrem/wifianalyzer/a/e;->m:Lcom/vrem/wifianalyzer/a/f;

    return-void
.end method

.method public static a(I)Lcom/vrem/wifianalyzer/a/e;
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/vrem/wifianalyzer/a/e;->values()[Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vrem/wifianalyzer/a/e;->a:Lcom/vrem/wifianalyzer/a/e;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/vrem/wifianalyzer/a/e;->values()[Lcom/vrem/wifianalyzer/a/e;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vrem/wifianalyzer/a/e;
    .locals 1

    const-class v0, Lcom/vrem/wifianalyzer/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/a/e;

    return-object v0
.end method

.method public static values()[Lcom/vrem/wifianalyzer/a/e;
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/a/e;->n:[Lcom/vrem/wifianalyzer/a/e;

    invoke-virtual {v0}, [Lcom/vrem/wifianalyzer/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vrem/wifianalyzer/a/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/a/e;->k:I

    return v0
.end method

.method public a(Lcom/vrem/wifianalyzer/MainActivity;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/a/e;->m:Lcom/vrem/wifianalyzer/a/f;

    invoke-interface {v0, p1, p2, p0}, Lcom/vrem/wifianalyzer/a/f;->a(Lcom/vrem/wifianalyzer/MainActivity;Landroid/view/MenuItem;Lcom/vrem/wifianalyzer/a/e;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vrem/wifianalyzer/a/e;->l:Z

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/vrem/wifianalyzer/a/e;->j:I

    return v0
.end method
