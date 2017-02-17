.class final Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[I

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->a:I

    iput p3, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->b:I

    iput p4, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->c:I

    new-array v0, p4, [I

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->d:[I

    mul-int v0, p4, p3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$a;->e:[Ljava/lang/String;

    return-void
.end method
