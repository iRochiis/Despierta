.class Lmx/jorge/despierta/AlarmActivity$1;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/AlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmx/jorge/despierta/AlarmActivity;


# direct methods
.method constructor <init>(Lmx/jorge/despierta/AlarmActivity;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lmx/jorge/despierta/AlarmActivity$1;->this$0:Lmx/jorge/despierta/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6
    sget-boolean v0, Lmx/jorge/despierta/TripService;->ringing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$1;->this$0:Lmx/jorge/despierta/AlarmActivity;

    invoke-virtual {v0}, Lmx/jorge/despierta/AlarmActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$1;->this$0:Lmx/jorge/despierta/AlarmActivity;

    invoke-virtual {v0}, Lmx/jorge/despierta/AlarmActivity;->renderMessage()V

    iget-object v0, p0, Lmx/jorge/despierta/AlarmActivity$1;->this$0:Lmx/jorge/despierta/AlarmActivity;

    iget-object v0, v0, Lmx/jorge/despierta/AlarmActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
