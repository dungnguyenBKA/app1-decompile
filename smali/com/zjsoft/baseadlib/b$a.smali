.class final Lcom/zjsoft/baseadlib/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/baseadlib/b;->d(Landroid/content/Context;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroidx/appcompat/app/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/baseadlib/b$a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjsoft/baseadlib/b$a;->c:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/zjsoft/baseadlib/b$a;->b:Landroid/content/Context;

    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    invoke-static {p1, v0}, Lcc0;->y(Landroid/content/Context;Lcom/google/ads/consent/ConsentStatus;)V

    .line 2
    iget-object p1, p0, Lcom/zjsoft/baseadlib/b$a;->c:Landroidx/appcompat/app/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
