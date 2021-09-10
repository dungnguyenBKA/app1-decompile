.class Lza0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza0;->j(Landroid/app/Activity;Lcb0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcb0;

.field final synthetic d:Lza0;


# direct methods
.method constructor <init>(Lza0;Landroid/app/Activity;Lcb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lza0$a;->d:Lza0;

    iput-object p2, p0, Lza0$a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lza0$a;->c:Lcb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lza0$a;->d:Lza0;

    iget-object v1, p0, Lza0$a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lza0$a;->c:Lcb0;

    invoke-static {v0, v1, v2}, Lza0;->a(Lza0;Landroid/app/Activity;Lcb0;)V

    return-void
.end method
