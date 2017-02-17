.class public Lnet/veritran/vtuserapplication/model/VTRuntimeException;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final VTRE_TOKEN_PASSWORD_DATA_EMPTY:I = 0xc

.field public static final VTRE_TOKEN_PASSWORD_GENERIC:I = 0x1

.field public static final VTRE_TOKEN_PASSWORD_NOT_VALID:I = 0xa


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lnet/veritran/vtuserapplication/model/VTRuntimeException;->a:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VTRuntimeException ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/veritran/vtuserapplication/model/VTRuntimeException;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
