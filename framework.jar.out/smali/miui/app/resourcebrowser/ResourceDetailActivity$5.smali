.class Lmiui/app/resourcebrowser/ResourceDetailActivity$5;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupNavigator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$5;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$5;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->navigateToNextResource()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$100(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 292
    return-void
.end method