.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda48;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lmx/jorge/despierta/MainActivity;->lambda$importPet$57$mx-jorge-despierta-MainActivity(Landroid/net/Uri;)V

    return-void
.end method
