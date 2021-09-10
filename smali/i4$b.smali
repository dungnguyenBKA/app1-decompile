.class public Li4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li4$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Li4$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Li4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li4$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Li4$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Li4$b;->c:Li4$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Li4$b$a;
    .locals 1

    .line 1
    new-instance v0, Li4$b$a;

    invoke-direct {v0, p0}, Li4$b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
