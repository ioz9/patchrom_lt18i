.class Lcom/android/settings/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$800(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V

    .line 660
    return-void
.end method