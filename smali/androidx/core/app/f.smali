.class public Landroidx/core/app/f;
.super Landroidx/core/app/h;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/app/d;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2
    check-cast p1, Landroidx/core/app/i;

    invoke-virtual {p1}, Landroidx/core/app/i;->b()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/f;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/g;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/f;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
