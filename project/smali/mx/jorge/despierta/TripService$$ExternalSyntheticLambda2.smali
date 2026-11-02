.class public final synthetic Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/TripService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/TripService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;->f$0:Lmx/jorge/despierta/TripService;

    iput-boolean p2, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;->f$0:Lmx/jorge/despierta/TripService;

    iget-boolean v1, p0, Lmx/jorge/despierta/TripService$$ExternalSyntheticLambda2;->f$1:Z

    invoke-virtual {v0, v1, p1, p2, p3}, Lmx/jorge/despierta/TripService;->lambda$play$2$mx-jorge-despierta-TripService(ZLandroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
