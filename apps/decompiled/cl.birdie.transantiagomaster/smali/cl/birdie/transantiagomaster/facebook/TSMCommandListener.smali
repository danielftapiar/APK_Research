.class public interface abstract Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
.super Ljava/lang/Object;
.source "TSMCommandListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;,
        Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
    }
.end annotation


# virtual methods
.method public abstract capasPorZoom()V
.end method

.method public abstract onActivarAds()V
.end method

.method public abstract onActualizarSocialFeed()V
.end method

.method public abstract onBuscar(Ljava/lang/String;)V
.end method

.method public abstract onCheckMissingVoiceData()V
.end method

.method public abstract onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V
.end method

.method public abstract onComplain(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Lcl/birdie/toolkit/LatLng;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onCount(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$Counter;)I
.end method

.method public abstract onCreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onCreatePost(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onDescargarItinerario()V
.end method

.method public abstract onDescargarRecorridos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onDismissSocialLogin()V
.end method

.method public abstract onDismissTwitterLogin()V
.end method

.method public abstract onDisplayComment(Ljava/lang/String;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onGetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onGetPost(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onGetString$47921032()Ljava/lang/String;
.end method

.method public abstract onGetUrlProfilePicture(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/UserModel;",
            ">;",
            "Lcl/birdie/transantiagomaster/facebook/IFBCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetUrlProfilePictureUI(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/UserModel;",
            ">;",
            "Lcl/birdie/transantiagomaster/facebook/IFBCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetWallPosts(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onImageSelected(Ljava/lang/String;)V
.end method

.method public abstract onLaunchURL(Ljava/lang/String;)V
.end method

.method public abstract onLike(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onMapUpdate(I)V
.end method

.method public abstract onMapaCentrar()V
.end method

.method public abstract onMapaDibujarUbicacion()V
.end method

.method public abstract onMapaRefrescarOverlays()V
.end method

.method public abstract onMostrarIntersticial()V
.end method

.method public abstract onPostLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onProgressBarAddTask()V
.end method

.method public abstract onProgressBarRemoveTask()V
.end method

.method public abstract onRequestFacebookPublishPermissions(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Z
.end method

.method public abstract onRequestLogin()V
.end method

.method public abstract onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onRequestTwitterLogin(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end method

.method public abstract onRequestTwitterLogout()V
.end method

.method public abstract onRevisarLayers()V
.end method

.method public abstract onSeleccionarItinerario()V
.end method

.method public abstract onSelectFavorito(Lcl/birdie/transantiagomaster/newobjetos/IFavorito;)V
.end method

.method public abstract onSelectSource$f9f2f5c(Lcl/birdie/transantiagomaster/IPhotoTarget;)V
.end method

.method public abstract onSendUserInfo(Lorg/json/JSONObject;)V
.end method

.method public abstract onSetGApp(Lcl/birdie/transantiagomaster/GApp;)V
.end method

.method public abstract onSetModoNavegacion(I)V
.end method

.method public abstract onShowBarraDerecha()V
.end method

.method public abstract onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
.end method

.method public abstract onShowContent()V
.end method

.method public abstract onShowFavoritos()V
.end method

.method public abstract onShowFotos()V
.end method

.method public abstract onShowItinerarios()V
.end method

.method public abstract onShowMapa()V
.end method

.method public abstract onShowMuro()V
.end method

.method public abstract onShowPlanificar()V
.end method

.method public abstract onShowRecorridos()V
.end method

.method public abstract onShowSaldoBip()V
.end method

.method public abstract onShowSpeechHelp(Z)V
.end method

.method public abstract onSpeechCommand()V
.end method

.method public abstract onStartVoiceRecognition()V
.end method

.method public abstract onToast(I)V
.end method

.method public abstract onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTrackView(Ljava/lang/String;)V
.end method

.method public abstract onVibrate()V
.end method

.method public abstract redDisponible()Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
.end method

.method public abstract requestAdLocation(Landroid/location/Location;)V
.end method

.method public abstract setCenter(Lcom/google/android/maps/GeoPoint;)V
.end method

.method public abstract setCenterLatLng(Lcl/birdie/toolkit/LatLng;)V
.end method

.method public abstract setItinerarioLayer()V
.end method
