.class public final Lh2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2$a;,
        Lh2$b;,
        Lh2$d;,
        Lh2$c;
    }
.end annotation


# static fields
.field public static final a:Lg2;

.field public static final b:Lg2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lh2$d;

    sget-object v1, Lh2$a;->a:Lh2$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh2$d;-><init>(Lh2$b;Z)V

    sput-object v0, Lh2;->a:Lg2;

    .line 2
    new-instance v0, Lh2$d;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lh2$d;-><init>(Lh2$b;Z)V

    sput-object v0, Lh2;->b:Lg2;

    return-void
.end method
