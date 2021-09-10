.class public final synthetic Llo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje0;


# instance fields
.field public final synthetic a:Loo;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Loo;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llo;->a:Loo;

    iput-object p2, p0, Llo;->b:Landroid/app/Activity;

    iput p3, p0, Llo;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Llo;->a:Loo;

    iget-object v1, p0, Llo;->b:Landroid/app/Activity;

    iget v2, p0, Llo;->c:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Loo;->o(Landroid/app/Activity;ILjava/util/ArrayList;)V

    return-void
.end method
