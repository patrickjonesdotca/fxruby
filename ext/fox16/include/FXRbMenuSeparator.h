/***********************************************************************
 * FXRuby -- the Ruby language bindings for the FOX GUI toolkit.
 * Copyright (c) 2001-2009 by Lyle Johnson. All Rights Reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * For further information please contact the author by e-mail
 * at "lyle@lylejohnson.name".
 ***********************************************************************/

/***********************************************************************
 * $Id: FXRbMenuSeparator.h 2776 2007-11-27 21:29:58Z lyle $
 ***********************************************************************/

#ifndef FXRBMENUSEPARATOR_H
#define FXRBMENUSEPARATOR_H

class FXRbMenuSeparator : public FXMenuSeparator {
  FXDECLARE(FXRbMenuSeparator)
protected:
  FXRbMenuSeparator(){}
#include "FXRbObjectVirtuals.h"
#include "FXRbIdVirtuals.h"
#include "FXRbDrawableVirtuals.h"
#include "FXRbWindowVirtuals.h"
public:
  /// Construct a menu separator
  FXRbMenuSeparator(FXComposite* p,FXObject* tgt=NULL,FXSelector sel=0,FXuint opts=0) : FXMenuSeparator(p,tgt,sel,opts){}

  // Destructor
  virtual ~FXRbMenuSeparator(){
    FXRbUnregisterRubyObj(this);
    }

  // Mark dependencies for the GC
  static void markfunc(FXMenuSeparator* self);
  };

#endif
