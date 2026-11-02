.class public final synthetic Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/UiSheet$Builder;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/UiSheet$Builder;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;->f$0:Lmx/jorge/despierta/UiSheet$Builder;

    iput-object p2, p0, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;->f$0:Lmx/jorge/despierta/UiSheet$Builder;

    iget-object v1, p0, Lmx/jorge/despierta/UiSheet$Builder$$ExternalSyntheticLambda4;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/UiSheet$Builder;->lambda$show$3$mx-jorge-despierta-UiSheet$Builder(Landroid/app/Dialog;)V

    return-void
.end method
