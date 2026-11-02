.class Lmx/jorge/despierta/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmx/jorge/despierta/MainActivity;


# direct methods
.method constructor <init>(Lmx/jorge/despierta/MainActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    iget-object v0, v0, Lmx/jorge/despierta/MainActivity;->screen:Ljava/lang/String;

    const-string v1, "home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    iget-object v0, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    iget-object v0, v0, Lmx/jorge/despierta/MainActivity;->monitor:Landroid/widget/TextView;

    sget-object v1, Lmx/jorge/despierta/TripService;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    iget-boolean v0, v0, Lmx/jorge/despierta/MainActivity;->shownRinging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmx/jorge/despierta/MainActivity;->shownRinging:Z

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    invoke-virtual {v0}, Lmx/jorge/despierta/MainActivity;->home()V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmx/jorge/despierta/MainActivity;->shownRinging:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$1;->this$0:Lmx/jorge/despierta/MainActivity;

    iget-object v0, v0, Lmx/jorge/despierta/MainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
