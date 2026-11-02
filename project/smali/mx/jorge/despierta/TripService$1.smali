.class Lmx/jorge/despierta/TripService$1;
.super Ljava/lang/Object;
.source "TripService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/TripService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmx/jorge/despierta/TripService;


# direct methods
.method constructor <init>(Lmx/jorge/despierta/TripService;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lmx/jorge/despierta/TripService$1;->this$0:Lmx/jorge/despierta/TripService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6
    iget-object v0, p0, Lmx/jorge/despierta/TripService$1;->this$0:Lmx/jorge/despierta/TripService;

    invoke-virtual {v0}, Lmx/jorge/despierta/TripService;->refreshWindow()V

    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/TripService$1;->this$0:Lmx/jorge/despierta/TripService;

    iget-boolean v0, v0, Lmx/jorge/despierta/TripService;->alertVibration:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/TripService$1;->this$0:Lmx/jorge/despierta/TripService;

    # Waveform repeats itself; do not restart a recorded pattern every ten seconds.

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/TripService$1;->this$0:Lmx/jorge/despierta/TripService;

    iget-object v0, v0, Lmx/jorge/despierta/TripService;->h:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
