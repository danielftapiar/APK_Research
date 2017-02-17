.class public interface abstract Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;
.super Ljava/lang/Object;


# static fields
.field public static final API_FUNCTION_NOT_IMPLEMENTED_ERROR:I = 0x3

.field public static final API_GENERIC_ERROR:I = 0xa

.field public static final API_ID_NOT_IMPLEMENTED_ERROR:I = 0x2

.field public static final API_NO_ERROR:I = 0x0

.field public static final API_WRONG_PARAMETERS_ERROR:I = 0x1


# virtual methods
.method public abstract executeAPI(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAPIId()I
.end method

.method public abstract getFunctionId()I
.end method
