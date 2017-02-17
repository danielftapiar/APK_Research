.class final Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/comm/messages/VT0210Message;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;->a:I

    iput-object p3, p0, Lnet/veritran/vtuserapplication/comm/messages/VT0210Message$b;->b:Ljava/lang/String;

    return-void
.end method
