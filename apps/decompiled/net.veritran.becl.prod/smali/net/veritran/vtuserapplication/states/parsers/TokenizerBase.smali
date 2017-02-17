.class public Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->a:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [C

    iget-object v1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2, p1, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getText()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/states/parsers/TokenizerBase;->a:Ljava/lang/StringBuffer;

    return-object v0
.end method
