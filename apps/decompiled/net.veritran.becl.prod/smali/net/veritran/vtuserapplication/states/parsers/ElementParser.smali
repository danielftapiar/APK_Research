.class public Lnet/veritran/vtuserapplication/states/parsers/ElementParser;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/states/parsers/ElementParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;->a:Lnet/veritran/vtuserapplication/states/parsers/ElementParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/states/parsers/ElementParser;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;->a:Lnet/veritran/vtuserapplication/states/parsers/ElementParser;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;->a:Lnet/veritran/vtuserapplication/states/parsers/ElementParser;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/states/parsers/ElementParser;->a:Lnet/veritran/vtuserapplication/states/parsers/ElementParser;

    return-object v0
.end method
