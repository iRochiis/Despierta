.class public final synthetic Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lmx/jorge/despierta/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lmx/jorge/despierta/MainActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$0:Lmx/jorge/despierta/MainActivity;

    iput-object p2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$0:Lmx/jorge/despierta/MainActivity;

    iget-object v1, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lmx/jorge/despierta/MainActivity$$ExternalSyntheticLambda56;->f$3:Landroid/widget/EditText;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lmx/jorge/despierta/MainActivity;->lambda$pickTime$32$mx-jorge-despierta-MainActivity(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
