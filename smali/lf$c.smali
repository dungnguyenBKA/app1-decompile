.class public interface abstract Llf$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:Llf$c;

.field public static final b:Llf$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llf$c$a;

    invoke-direct {v0}, Llf$c$a;-><init>()V

    sput-object v0, Llf$c;->a:Llf$c;

    .line 2
    sput-object v0, Llf$c;->b:Llf$c;

    return-void
.end method
