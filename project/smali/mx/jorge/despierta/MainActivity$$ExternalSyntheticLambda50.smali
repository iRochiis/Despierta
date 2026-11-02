.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-boolean p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-boolean v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda50;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lmx/jorge/despierta/MainActivity;->lambda$fullScreenHelp$59$mx-jorge-despierta-MainActivity(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
