.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda21;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lmx/jorge/despierta/MainActivity;->lambda$customPalette$54$mx-jorge-despierta-MainActivity(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
