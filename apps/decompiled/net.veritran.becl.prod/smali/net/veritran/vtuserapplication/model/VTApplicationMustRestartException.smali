.class public Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrintableError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setPrintableError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->a:Ljava/lang/String;

    return-void
.end method
