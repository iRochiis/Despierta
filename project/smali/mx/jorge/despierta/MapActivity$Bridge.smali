.class Lmx/jorge/despierta/MapActivity$Bridge;
.super Ljava/lang/Object;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx/jorge/despierta/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lmx/jorge/despierta/MapActivity;


# direct methods
.method constructor <init>(Lmx/jorge/despierta/MapActivity;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 14
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    new-instance v1, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda0;-><init>(Lmx/jorge/despierta/MapActivity$Bridge;)V

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/MapActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public choose(DDLjava/lang/String;I)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    iget-object v9, v0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    new-instance v10, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda1;-><init>(Lmx/jorge/despierta/MapActivity$Bridge;DDLjava/lang/String;I)V

    invoke-virtual {v9, v10}, Lmx/jorge/despierta/MapActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object v0, p0

    :goto_0
    return-void
.end method

.method synthetic lambda$cancel$2$mx-jorge-despierta-MapActivity$Bridge()V
    .locals 1

    .line 14
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {v0}, Lmx/jorge/despierta/MapActivity;->finish()V

    return-void
.end method

.method synthetic lambda$choose$0$mx-jorge-despierta-MapActivity$Bridge(DDLjava/lang/String;I)V
    .locals 3

    .line 12
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "lat"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "lon"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "name"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2710

    invoke-static {p2, p6}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 p3, 0x64

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-string p3, "radius"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p1}, Lmx/jorge/despierta/MapActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {p1}, Lmx/jorge/despierta/MapActivity;->finish()V

    return-void
.end method

.method synthetic lambda$locate$1$mx-jorge-despierta-MapActivity$Bridge()V
    .locals 1

    .line 13
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    invoke-virtual {v0}, Lmx/jorge/despierta/MapActivity;->locate()V

    return-void
.end method

.method public locate()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 13
    iget-object v0, p0, Lmx/jorge/despierta/MapActivity$Bridge;->this$0:Lmx/jorge/despierta/MapActivity;

    new-instance v1, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lmx/jorge/despierta/MapActivity$Bridge$$ExternalSyntheticLambda2;-><init>(Lmx/jorge/despierta/MapActivity$Bridge;)V

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/MapActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
