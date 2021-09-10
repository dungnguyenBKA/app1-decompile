.class public final synthetic Lio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd0;


# instance fields
.field public final synthetic a:Loo;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Loo;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio;->a:Loo;

    iput-object p2, p0, Lio;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lud0;)V
    .locals 2

    iget-object v0, p0, Lio;->a:Loo;

    iget-object v1, p0, Lio;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Loo;->n(Landroid/app/Activity;Lud0;)V

    return-void
.end method
